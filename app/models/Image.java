package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Image extends Model {
    @Id
    private int id;
    private String url;
    private int type; // 1 for jpg, 2 for png
    private int size; // in byte
    private int width, height; // in pixel
    private Date date;

    @OneToOne(mappedBy = "image")
    private Volunteer volunteer;
    @OneToOne(mappedBy = "image")
    private Event event;
    @OneToOne(mappedBy = "image")
    private Organization organization;
    @OneToOne(mappedBy = "image")
    private ContentImage contentImage;
}
