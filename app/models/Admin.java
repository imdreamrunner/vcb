package models;

import play.db.ebean.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin extends Model {
    @Id
    private int id;
    @Column(unique = true)
    private String username;
    private String password;
    private int level;
}
