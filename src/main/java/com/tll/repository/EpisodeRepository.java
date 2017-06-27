package com.tll.repository;

import com.tll.model.Episode;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by abdullahtellioglu on 27/06/17.
 */

public interface EpisodeRepository extends CrudRepository<Episode,Integer>{

    List<Episode> findByMangaId(int mangaId);
}
