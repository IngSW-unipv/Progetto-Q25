package it.unipv.ingsw.fs.eidos.model;

public abstract class User {
    private final String username;
    private final String password;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    //FIXME hash passwords
    public String getPassword() {
        return password;
    }

}
