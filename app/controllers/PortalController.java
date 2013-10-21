package controllers;

import play.mvc.Controller;
import play.mvc.Result;
import views.html.portal.index;
import views.html.portal.project;
import views.html.portal.projectList;
import views.html.portal.calendar;
import views.html.portal.event;

public class PortalController extends Controller {

    public static Result index() {
        return ok(index.render("Your new application is ready."));
    }

    public static Result projectList() {
        return ok(projectList.render());
    }

    public static Result project() {
        return ok(project.render());
    }

    public static Result calendar() {
        return ok(calendar.render());
    }

    public static Result event() {
        return ok(event.render());
    }

}
