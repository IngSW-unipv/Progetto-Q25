package it.unipv.ingsw.fs.eidos.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/EIDOS";
    private static final String USER = "root";
    private static final String PASSWORD = "password";

    private static Connection connection = null;

    // Metodo per ottenere la connessione
    public static Connection getConnection() {
        if (connection == null) {
            try {
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Connessione al database riuscita.");
            } catch (SQLException e) {
                System.err.println("Errore nella connessione al database:");
                e.printStackTrace();
            }
        }
        return connection;
    }

    // Metodo per chiudere la connessione
    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Connessione al database chiusa.");
            } catch (SQLException e) {
                System.err.println("Errore nella chiusura della connessione:");
                e.printStackTrace();
            }
        }
    }
}