package com.tll.controller.admin;

import com.tll.model.Episode;
import com.tll.model.Genre;
import com.tll.model.Manga;
import com.tll.repository.EpisodeRepository;
import com.tll.repository.GenreRepository;
import com.tll.repository.MangaRepository;
import com.tll.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by abdullahtellioglu on 26/06/17.
 */
@Controller("AdminIndexController")
@RequestMapping("/admin/")
public class IndexController {
    @Autowired
    MangaRepository mangaRepository;
    @Autowired
    GenreRepository genreRepository;
    @Autowired
    EpisodeRepository episodeRepository;
    @GetMapping(value = "manga/new")
    public String newManga(Model model,
                           @RequestParam(name = "id",required = false,defaultValue = "0") String mangaId){
        Manga manga = mangaRepository.findOne(Util.toInt(mangaId));
        if(manga == null){
            manga = new Manga();
        }
        List<Genre> mangaGenres = genreRepository.findMangaGenres(manga.getId());
        Iterable<Genre> allGenresIt = genreRepository.findAll();
        List<Genre> genreList = new ArrayList<>();
        allGenresIt.forEach(genreList::add);
        for(int i =0;i<mangaGenres.size();i++){
            for(int j =0;j<genreList.size();j++){
                if(mangaGenres.get(i).getName().equals(genreList.get(j).getName())){
                    genreList.remove(j);
                    break;
                }
            }
        }
        model.addAttribute("genres",genreList);
        model.addAttribute("mangaGenres",mangaGenres);
        model.addAttribute("manga",manga);
        return "admin/mangasingle";
    }
    @PostMapping(value = "manga/new")
    public String addManga(
                           @RequestParam(name="id",required = true,defaultValue = "0") String idStr,
                           @RequestParam(name="orgName",required = true) String originalName,
                           @RequestParam(name="dispName",required = true) String displayName,
                           @RequestParam(name="author",required = true) String author,
                           @RequestParam(name="credit",required = true,defaultValue = "0") String credit,
                           @RequestParam(name="date",required = true) String date,
                           @RequestParam(name="kapakimg",required = false) MultipartFile kapakImg,
                           @RequestParam(name="kareimg",required = false) MultipartFile kareImg,
                           @RequestParam(name="dikdortgenimg",required = false) MultipartFile dikdortgenImg,
                           @RequestParam(name="featured",required = false,defaultValue = "0") String featuredStr,
                           @RequestParam(name="state",required = false,defaultValue = "On Going") String state,
                           @RequestParam(name="description",required = true) String description,
                           @RequestParam(name="genres",required = false) String genres[]
                           ){
        Manga manga = mangaRepository.findOne(Util.toInt(idStr));
        if(manga== null){
            manga = new Manga();
        }
        manga.setOriginalName(originalName);
        manga.setDisplayName(displayName);
        manga.setAuthor(author);
        manga.setCredit(Util.toInt(credit));
        manga.setFeatured(Util.toInt(featuredStr) == 1 ? true : false);
        manga.setState(state);
        manga.setDescription(description);

        manga = mangaRepository.save(manga);

        return "redirect:/manga/list";
    }
    @PostMapping(value="manga/episode/new")
    @ResponseBody
    public String addEpisode(@RequestParam(name = "id",required = false,defaultValue = "0") String idStr,
                             @RequestParam(name="chapterIndex") String chapterStr,
                             @RequestParam(name="chapterDate") String dateStr,
                             @RequestParam(name="mangaId") String mangaIdStr,
                             @RequestParam(name="episodeName") String episodeName){
        Episode episode = episodeRepository.findOne(Util.toInt(idStr));
        if(episode == null){
            episode = new Episode();
        }
        int chapterId = Util.toInt(chapterStr);
        if(chapterId == 0){
            return Util.jsonResponseObj(false,"Wrong chapter ID",null,null);
        }
        episode.setChapter(chapterId);
        episode.setDate(Util.getDateFromString(dateStr));
        int mangaId = Util.toInt(mangaIdStr);
        if(mangaId == 0){
            return Util.jsonResponseObj(false,"Wrong manga ID",null,null);
        }
        episode.setMangaId(mangaId);
        episode.setName(episodeName);
        episode = episodeRepository.save(episode);
        return Util.jsonResponseObj(true,"","/admin/manga/episode/"+episode.getId(),"");
    }
    @GetMapping("manga/episode/{episodeId}")
    public String getEpisode(@PathVariable("episodeId") int episodeId){
        return "";
    }
    @GetMapping("manga/episode/list/{mangaId}")
    public String episodeList(@PathVariable("mangaId") int mangaId,Model model){
        if(mangaId <= 0 ){
            return "redirect:/";
        }
        List<Episode> episodeList = episodeRepository.findByMangaId(mangaId);
        model.addAttribute("episodeList",episodeList);
        return "admin/episodeList";
    }
    @RequestMapping(value="manga/list",method = RequestMethod.GET)
    public String mangaList(Model model){
        model.addAttribute("mangaList",mangaRepository.findAllByOrderByOriginalNameAsc());
        return "admin/mangalist";
    }

}
