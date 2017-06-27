package com.tll.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by abdullahtellioglu on 17/06/17.
 */
@Entity
public class Manga {
    @GeneratedValue
    @Id
    private int id;
    private String originalName,displayName;
    private String coverImage,squareImage,rectangleImage;
    private String summary;
    private float score;
    private String author;
    private Date firstEpisodeDate;
    private String description;

    private int genreId;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private String state;
    private int credit;
    private boolean featured;

    public int getGenreId() {
        return genreId;
    }

    public void setGenreId(int genreId) {
        this.genreId = genreId;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public Date getFirstEpisodeDate() {
        return firstEpisodeDate;
    }

    public void setFirstEpisodeDate(Date firstEpisodeDate) {
        this.firstEpisodeDate = firstEpisodeDate;
    }


    public String getOriginalName() {
        return originalName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setOriginalName(String originalName) {
        this.originalName = originalName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public String getSquareImage() {
        return squareImage;
    }

    public void setSquareImage(String squareImage) {
        this.squareImage = squareImage;
    }

    public String getRectangleImage() {
        return rectangleImage;
    }

    public void setRectangleImage(String rectangleImage) {
        this.rectangleImage = rectangleImage;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public boolean isFeatured() {
        return featured;
    }

    public void setFeatured(boolean featured) {
        this.featured = featured;
    }

    @Override
    public String toString() {
        return "Manga{" +
                "id=" + id +
                ", originalName='" + originalName + '\'' +
                ", displayName='" + displayName + '\'' +
                ", coverImage='" + coverImage + '\'' +
                ", squareImage='" + squareImage + '\'' +
                ", rectangleImage='" + rectangleImage + '\'' +
                ", summary='" + summary + '\'' +
                ", score=" + score +
                ", author='" + author + '\'' +
                ", firstEpisodeDate=" + firstEpisodeDate +

                ", state='" + state + '\'' +
                ", featured=" + featured +
                '}';
    }
}
