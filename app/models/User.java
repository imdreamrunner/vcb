package models;

import play.db.ebean.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User extends Model {
    @Id
    private int id;
    @Column(unique = true)
    private String username;
    private String password;
    @Column(unique = true)
    private String email;
    private String secretKey;
    private int status; // 0 normal. 1 for email check. >= 2 error

    public User() {
        secretKey = "some random value";
    }
}
