package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Organization extends Model {
    @Id
    private int id;
    private String name;
    @OneToOne(cascade = CascadeType.ALL)
    private Image image;
    private String description;
    @OneToOne(cascade = CascadeType.ALL)
    private Content content;
    @OneToOne(cascade = CascadeType.ALL)
    private Location location;
    @OneToOne
    private User user;
    @ManyToOne
    private OrganizationCategory category;
    private Date date;
    private int status; // 0 for normal, 1 for waiting for verify

    // contact information
    private String contactNumber;
    private String email;
    private String website;
    private String facebookLink;
    private String twitterLink;

    // banking information
    private long balance;
    @OneToMany(mappedBy = "organization")
    private List<OrganizationTransaction> transactions;
    @OneToMany(mappedBy = "organization")
    private List<Donation> donations;
}
