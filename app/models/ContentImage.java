package models;

import play.db.ebean.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ContentImage extends Model {
    @Id
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    private Image image;
    @OneToOne
    private Content content;
}
