package titanic;

import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusIntegrationTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.containsString;

//@QuarkusTestResource(CustomResource.class)
@WithPostgresTestResource(
        version = "12.15"
)
@QuarkusIntegrationTest
public class PassengerIT {
    @Test
    public void testGetPassengerClass() {
        given()
                .when().get("/passenger/892/getClass/")
                .then()
                .statusCode(200)
                .body(containsString("3"));
    }

    @Test
    public void testGetPassengerClass2() {
        given()
                .when().get("/passenger/894/getClass/")
                .then()
                .statusCode(200)
                .body(containsString("2"));
    }

}
