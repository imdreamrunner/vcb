package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Donation extends Model {
    @Id
    private int id;
    @ManyToOne
    private Volunteer volunteer;
    @ManyToOne
    private Organization organization;
    @OneToOne
    private VolunteerTransaction volunteerTransaction;
    @OneToOne OrganizationTransaction organizationTransaction;
    private Date date;
}
