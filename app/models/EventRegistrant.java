package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class EventRegistrant extends Model {
    @Id
    private int id;
    @ManyToOne
    private Event event;
    @ManyToOne
    private Volunteer volunteer;
    private Date date;
}
