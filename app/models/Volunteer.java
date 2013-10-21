package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Volunteer extends Model {
    @Id
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    private User user;
    private int status; // 0 for normal
    private String firstName;
    private String lastName;
    private String contactNumber;
    private String address1;
    private String address2;
    private String nationality;
    @OneToMany(mappedBy = "volunteer")
    private List<VolunteerDocument> documents;
    @OneToOne(cascade = CascadeType.ALL)
    private Image image;

    // banking information
    private int balance;
    @OneToMany(mappedBy = "volunteer")
    private List<VolunteerTransaction> transactions;
    @OneToMany(mappedBy = "volunteer")
    private List<VolunteerRecord> records;
    @OneToMany(mappedBy = "volunteer")
    private List<Donation> donations;
    @OneToMany(mappedBy = "volunteer")
    private List<EventRegistrant> registeredEvents;

    @OneToMany
    private List<VolunteerNotification> notifications;

    public Volunteer() {
        image = new Image();
    }
}
