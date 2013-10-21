package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Location extends Model {
    @Id
    private int id;
    private String text;
    private String postalCode;
    private int lat, lng;
}
