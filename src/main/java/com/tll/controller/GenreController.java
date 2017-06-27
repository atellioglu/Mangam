package com.tll.controller;

import com.tll.model.Genre;
import com.tll.repository.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/genre")
public class GenreController {
    @Autowired
    GenreRepository genreRepository;

    @RequestMapping("/list")
    public String index(Model model){
           Iterable<Genre> genres = genreRepository.findAll();
           model.addAttribute("genres",genres);
           return "genres";
    }
    @RequestMapping("/manga/{name}")
    public String manga(Model model, @PathVariable String name){
        Genre genre = genreRepository.findByName(name);
        if(genre==null){
            return "redirect:/";
        }

        model.addAttribute("genre",genre);

        return "genres";
    }
}
