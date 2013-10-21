package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class MailTemplate extends Model {
    @Id
    private int id;
    private String title;
    @Lob
    private String template;
}
