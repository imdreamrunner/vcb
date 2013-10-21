package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Mail extends Model {
    @Id
    private int id;
    @ManyToMany
    private List<User> users;
    @Lob
    private String data;
    @ManyToOne
    private MailTemplate template;
    private Date date;
    private int status; // 0 for waiting, 1 for progressing, 2 for done
}
