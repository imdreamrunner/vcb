package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class VolunteerTransaction extends Model {
    @Id
    private int id;
    private int amount;
    private Date date;
    @ManyToOne
    private Volunteer volunteer;
    @OneToOne(mappedBy = "volunteerTransaction")
    private Donation donation;
    @OneToOne(mappedBy = "transaction")
    private VolunteerRecord record;
}
