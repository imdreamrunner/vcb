package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class VolunteerNotification extends Model {
    @Id
    private int id;
    @ManyToOne
    private Volunteer volunteer;
    private int type;
    private String content;
    private String link;
    private Date date;
}
