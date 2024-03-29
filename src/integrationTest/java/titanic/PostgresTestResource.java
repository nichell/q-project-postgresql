package titanic;

import io.quarkus.test.common.DevServicesContext;
import io.quarkus.test.common.QuarkusTestResourceConfigurableLifecycleManager;
import io.quarkus.test.common.QuarkusTestResourceLifecycleManager;
import org.testcontainers.containers.PostgreSQLContainer;

import java.util.Map;
import java.util.Optional;

public class PostgresTestResource implements QuarkusTestResourceConfigurableLifecycleManager<WithPostgresTestResource>, DevServicesContext.ContextAware {

    PostgreSQLContainer container;
    private Optional<String> containerNetworkId;

    String postgresVersion;

    @Override
    public void init(WithPostgresTestResource annotation) {
        postgresVersion = annotation.version();
    }

    @Override
    public void setIntegrationTestContext(DevServicesContext context) {
        containerNetworkId = context.containerNetworkId();
    }

    @Override
    public Map<String, String> start() {
        // start a container making sure to call withNetworkMode() with the value of containerNetworkId if present
        container = new PostgreSQLContainer<>("postgres:" + postgresVersion).withInitScript("init/test.sql").withLogConsumer(outputFrame -> {
        });

        // apply the network to the container
        containerNetworkId.ifPresent(container::withNetworkMode);

        // start container before retrieving its URL or other properties
        container.start();

        String jdbcUrl = container.getJdbcUrl();
        if (containerNetworkId.isPresent()) {
            // Replace hostname + port in the provided JDBC URL with the hostname of the Docker container
            // running PostgreSQL and the listening port.
            jdbcUrl = fixJdbcUrl(jdbcUrl);
        }

        // return a map containing the configuration the application needs to use the service
        return Map.of(
                "quarkus.datasource.username", container.getUsername(),
                "quarkus.datasource.password", container.getPassword(),
                "quarkus.datasource.jdbc.url", jdbcUrl);
    }

    private String fixJdbcUrl(String jdbcUrl) {
        // Part of the JDBC URL to replace
        String hostPort = container.getHost() + ':' + container.getMappedPort(PostgreSQLContainer.POSTGRESQL_PORT);

        // Host/IP on the container network plus the unmapped port
        String networkHostPort =
                container.getCurrentContainerInfo().getConfig().getHostName()
                        + ':'
                        + PostgreSQLContainer.POSTGRESQL_PORT;

        return jdbcUrl.replace(hostPort, networkHostPort);
    }

    @Override
    public void stop() {
        // close container
    }
}


