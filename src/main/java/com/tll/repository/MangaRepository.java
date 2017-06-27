package com.tll.repository;

import com.tll.model.Manga;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

/**
 * Created by abdullahtellioglu on 25/06/17.
 */
public interface MangaRepository extends PagingAndSortingRepository<Manga,Integer> {
    Manga findByOriginalName(String name);
    List<Manga> findAllByOrderByOriginalNameAsc();
    @Query(nativeQuery = true,value = "Select m.* from UserMangaFavourite as uf, Manga as m where uf.mangaid = m.id AND uf.userid = ?")
    List<Manga> findByUserFavouritedManga(int userId);
}
