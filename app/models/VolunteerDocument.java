package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class VolunteerDocument extends Model {
    @Id
    private int id;
    private int type; // document type
    private String number;
    @ManyToOne
    private Volunteer volunteer;
}
