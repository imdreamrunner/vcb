package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Event extends Model {
    @Id
    private int id;
    private String name;
    private String description;
    @OneToOne(cascade = CascadeType.ALL)
    private Content content;
    @ManyToOne
    private Organization organization;
    @OneToOne (cascade = CascadeType.ALL)
    private Location location;
    private int numberOfPlaces;
    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    private List<EventRegistrant> registrants;
    @OneToMany(mappedBy = "event")
    private List<VolunteerRecord> volunteerRecords; // cannot be remove when records added
    @OneToOne(cascade = CascadeType.ALL)
    private Image image;

    private Date startTime;
    private Date endTime;

    private Date date;

}
