package com.tll.repository;

import com.tll.model.Genre;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by abdullahtellioglu on 25/06/17.
 */
public interface GenreRepository extends CrudRepository<Genre,Integer> {
    Genre findByName(String name);
    @Query(nativeQuery =  true,value ="Select Genre.* from genre,manga_genre where genre.id = manga_genre.genre_id AND manga_genre.manga_id = ?")
    List<Genre> findMangaGenres(int mangaId);
}
