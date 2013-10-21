package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Attachment extends Model {
    @Id
    private int id;
    private String url;
    private long size; // in byte
    private Date date;
    @OneToOne(mappedBy = "attachment")
    private ContentAttachment contentAttachment;
}
