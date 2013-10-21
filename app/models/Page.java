package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Page extends Model {
    @Id
    private int id;
    private String slug;
    private Content content;
}
