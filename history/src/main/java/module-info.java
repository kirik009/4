module com.example.history {
    requires javafx.controls;
    requires javafx.fxml;
requires java.sql;
    requires mysql.connector.j;
    //requires rt;

    opens com.example.history to javafx.fxml;
    exports com.example.history;
}