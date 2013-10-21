package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class OrganizationCategory extends Model {
    @Id
    private int id;
    private String name;
    private long pool;
    private int sort;

    @OneToMany(mappedBy = "category")
    private List<Organization> organizations;
}
