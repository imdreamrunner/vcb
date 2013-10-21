package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class OrganizationNotification extends Model {
    @Id
    private int id;
    @ManyToOne
    private Organization organization;
    private int type;
    private String content;
    private String link;
    private Date date;
}
