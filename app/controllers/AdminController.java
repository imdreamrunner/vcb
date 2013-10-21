package controllers;

import play.mvc.Controller;
import play.mvc.Result;
import views.html.admin.dashboard;

public class AdminController extends Controller {
    public static Result dashboard() {
        return ok(dashboard.render());
    }
}
