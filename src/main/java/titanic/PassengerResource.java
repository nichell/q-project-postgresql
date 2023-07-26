package titanic;

import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

import java.sql.SQLException;

@Path("/passenger")
public class PassengerResource {

    @Inject
    SQLAccess sqlAccess;

    @GET
    @Path("/{passengerId}/getClass")
    public int getPassengerClass(int passengerId) throws SQLException {
        return sqlAccess.getPassengerClass(passengerId);
    }



}
