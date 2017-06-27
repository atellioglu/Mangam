package com.tll.controller;

import com.tll.model.Image;
import com.tll.repository.ImageRepository;
import com.tll.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by abdullahtellioglu on 26/06/17.
 */
@Controller
public class IndexController {
    @Autowired
    ImageRepository imageRepository;
    @GetMapping("image/{imageId}")
    @ResponseBody
    public String image(@PathVariable String imgIdStr){
        int imgId = Util.toInt(imgIdStr);
        Image img = imageRepository.findOne(imgId);
        return "<img src='"+img.getPath()+"' alt='"+img.getDescription()+"' >";
    }
}
