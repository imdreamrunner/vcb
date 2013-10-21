package controllers;

import play.mvc.Result;
import play.mvc.Controller;
import views.html.portal.registerAsVolunteer;

public class UserController extends Controller {
    public static Result registerAsVolunteer() {
        return ok(registerAsVolunteer.render());
    }

    public static Result loginAsVolunteer() {
        return ok("ok");
    }

    public static Result registerAsOrganization() {
        return ok("ok");
    }

    public static Result loginAsOrganization() {
        return ok("ok");
    }

    public static Result loginAsVolunteerRequest() {
        return ok("ok");
    }

    public static Result registerAsVolunteerRequest() {
        return ok("ok");
    }

    public static Result loginAsOrganizationRequest() {
        return ok("ok");
    }

    public static Result organizationRegisterRequest() {
        return ok("ok");
    }
}
