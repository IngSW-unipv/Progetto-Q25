package it.unipv.ingsw.fs.eidos.model;

import java.io.File;
import java.time.LocalDate;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class Movie {
    private int id;
    private String title;
    private int duration;
    private String synopsis;
    private LocalDate releaseDate;
    private boolean rated;
    private boolean originalDub;
    private File posterPath;
    private Set<Person> genres;
    private Set<Person> directors;
    private Set<Person> cast;

    public Movie(int id, String title, int duration, String synopsis, LocalDate releaseDate, boolean rated, boolean originalDub, File posterPath, Collection<Person> genres, Collection<Person> directors, Collection<Person> cast) {
        this.id = id;
        this.title = title;
        this.duration = duration;
        this.synopsis = synopsis;
        this.releaseDate = releaseDate;
        this.rated = rated;
        this.originalDub = originalDub;
        this.posterPath = posterPath;
        this.genres = new HashSet<>(genres); //copia la collezione all'interno del nuovo HashSet
        this.directors = new HashSet<>(directors);
        this.cast = new HashSet<>(cast);
    }

    //le classi del Model contengono tutti i getter e i setter, sarà compito del ServiceLayer consentire o impedire la modifica dei parametri
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public LocalDate getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }

    public boolean isRated() {
        return rated;
    }

    public void setRated(boolean rated) {
        this.rated = rated;
    }

    public boolean isOriginalDub() {
        return originalDub;
    }

    public void setOriginalDub(boolean originalDub) {
        this.originalDub = originalDub;
    }

    public File getPosterPath() {
        return posterPath;
    }

    public void setPosterPath(File posterPath) {
        this.posterPath = posterPath;
    }

    public Set<Person> getGenres() {
        return genres;
    }

    public void setGenres(Collection<Person> genres) {
        this.genres = new HashSet<>(genres);
    }

    public Set<Person> getDirectors() {
        return directors;
    }

    public void setDirectors(Collection<Person> directors) {
        this.directors = new HashSet<>(directors);
    }

    public Set<Person> getCast() {
        return cast;
    }

    public void setCast(Collection<Person> cast) {
        this.cast = new HashSet<>(cast);
    }
}
