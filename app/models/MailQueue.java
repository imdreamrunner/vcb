package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
public class MailQueue extends Model {
    @Id
    private int id;
    @ManyToOne
    private User user;
    private String title;
    private String content;
    private int status; // 0 for waiting, >= 0 error
    private Date date;
    @ManyToOne
    private Mail mail;
}
