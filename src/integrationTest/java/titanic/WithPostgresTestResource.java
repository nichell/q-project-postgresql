package titanic;

import io.quarkus.test.common.QuarkusTestResource;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@QuarkusTestResource(PostgresTestResource.class)
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface WithPostgresTestResource {
    String version() default "latest";
}
