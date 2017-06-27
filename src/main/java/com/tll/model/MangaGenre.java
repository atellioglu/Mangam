package com.tll.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by abdullahtellioglu on 26/06/17.
 */
@Entity
public class MangaGenre {
    @Id
    @GeneratedValue
    private int id;
    private int mangaId;
    private int genreId;

}
