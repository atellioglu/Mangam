package com.tll.repository;

import com.tll.model.Image;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by abdullahtellioglu on 27/06/17.
 */
@Repository
public interface ImageRepository extends CrudRepository<Image,Integer>{

}
