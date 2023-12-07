package com.example.history;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;
import java.sql.SQLException;

public class HistoryController extends Modal {

    @FXML
    private TextArea text;

    @FXML
    private Button StartButton;


    @FXML
    private Button ChatButton;

    DataBaseHandler dbHandler = new DataBaseHandler();

    public void OnChatButtonClick() throws IOException {
        Modali(ChatButton, "auth.fxml");
    }

    public void OnStartButtonClick() throws IOException {
        Modali(StartButton, "start.fxml");
    }

    public void OnItem1Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(1));
    }

    public void OnItem2Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(2));
    }

    public void OnItem3Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(3));
    }

    public void OnItem4Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(4));
    }

    public void OnItem5Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(5));
    }

    public void OnItem6Click() throws SQLException {
        text.setWrapText(true);
        text.setText(dbHandler.getContext(6));
    }
}


