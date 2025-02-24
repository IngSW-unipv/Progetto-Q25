package it.unipv.ingsw.fs.eidos.model;

import java.time.LocalDateTime;

public class Screening {
    private int id;
    private Movie movie;
    private Hall hall;
    private LocalDateTime date;
    private float ticketPrice;

    public Screening(int id, Movie movie, Hall hall, LocalDateTime date, float ticketPrice) {
        this.id = id;
        this.movie = movie;
        this.hall = hall;
        this.date = date;
        this.ticketPrice = ticketPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Hall getHall() {
        return hall;
    }

    public void setHall(Hall hall) {
        this.hall = hall;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public float getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(float ticketPrice) {
        this.ticketPrice = ticketPrice;
    }
}
