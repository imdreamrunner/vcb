package models;

import play.db.ebean.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ContentAttachment extends Model {
    @Id
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    private Attachment attachment;
    @OneToOne
    private Content content;

}
