package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class News extends Model {
    @Id
    private int id;
    @OneToOne
    private Content content;
    @ManyToOne
    private NewsCategory category;
}
