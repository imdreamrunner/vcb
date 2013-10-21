package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Content extends Model {
    @Id
    private int id;
    @Lob
    private String content;
    private Date date;
    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL)
    private List<ContentAttachment> attachments;
    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL)
    private List<ContentImage> images;
}
