package models;

import play.db.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class NewsCategory extends Model {
    @Id
    private int id;
    private String slug;
    private String name;
    @OneToMany(mappedBy = "category")
    private List<News> newsList;
}
