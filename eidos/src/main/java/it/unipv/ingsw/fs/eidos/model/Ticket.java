package it.unipv.ingsw.fs.eidos.model;

public class Ticket {
    private int id;
    private Screening screening;
    private int row;
    private int col;
    private float paidPrice;

    public Ticket(int id, Screening screening, int row, int col, float paidPrice) {
        this.id = id;
        this.screening = screening;
        this.row = row;
        this.col = col;
        this.paidPrice = paidPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Screening getScreening() {
        return screening;
    }

    public void setScreening(Screening screening) {
        this.screening = screening;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public float getPaidPrice() {
        return paidPrice;
    }

    public void setPaidPrice(float paidPrice) {
        this.paidPrice = paidPrice;
    }
}
