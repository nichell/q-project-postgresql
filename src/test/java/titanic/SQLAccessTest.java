package titanic;

import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.inject.Inject;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


import java.sql.SQLException;
import java.util.List;

@QuarkusTestResource(CustomResource.class)
@QuarkusTest
class SQLAccessTest {
    @Inject
    SQLAccess access;

    @Inject
    Passenger passenger;
    @Test
    void read() throws SQLException {
        Assertions.assertEquals("hallo", access.readTestTable(12));
    }

    @Test
    void getPassengerClass() throws SQLException {
       Assertions.assertEquals(3, access.getPassengerClass(892));
       Assertions.assertEquals(2, access.getPassengerClass(894));
    }

    @Test
    void getPassenger() throws SQLException {
        List<String> passenger = access.getPassenger(1, true);
        Assertions.assertEquals(passenger.size(), 8);
        Assertions.assertTrue(passenger.contains("Jones, Mr. Charles Cresson"));
    }

    @Test
    void addPassenger() throws SQLException {
        passenger.id = 1;
        passenger.bookedClass = 3;
        passenger.name = "Robin Hood";
        access.addPassenger(passenger);
        Assertions.assertEquals(3, access.getPassengerClass(1));


    }
}
