package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class VolunteerRecord extends Model {
    @Id
    private int id;
    @ManyToOne
    private Volunteer volunteer;
    @OneToOne
    private Event event;
    @OneToOne
    private VolunteerTransaction transaction;
    private Date startTime;
    private Date endTime;
    private int deductedTime; // in minutes
    private int length; // in minutes
    private Date date;
}
