package com.tll.controller;

import com.tll.model.Manga;
import com.tll.repository.MangaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by abdullahtellioglu on 25/06/17.
 */
@Controller
public class MangaController {
    @Autowired
    MangaRepository mangaRepository;

    @RequestMapping("/manga/{name}")
    public String getManga(@PathVariable String name, Model model){
        Manga manga = mangaRepository.findByOriginalName(name);
        if(manga == null){
            return "redirect:/";
        }
        model.addAttribute("manga",manga);
        return "manga";
    }
}
