package it.unipv.ingsw.fs.eidos;

import it.unipv.ingsw.fs.eidos.utility.DBConnection;

public class Main {
    public static void main(String[] args) {
        System.out.println("Tentativo di connessione al database...");

        // Ottieni la connessione
        java.sql.Connection conn = DBConnection.getConnection();

        if (conn != null) {
            System.out.println("Connessione riuscita.");
        } else {
            System.out.println("Connessione fallita.    ");
        }

        // Chiudi la connessione
        DBConnection.closeConnection();
    }
}