package com.example.history;

import javafx.fxml.FXML;
import javafx.scene.control.Button;


import java.io.IOException;

public class AuthorController extends Modal {

    @FXML
    private Button StartButton;

    @FXML
    private Button ChatButton;


    public void OnChatButtonClick() throws IOException {
        Modali(ChatButton, "chat.fxml");
    }

    public void OnStartButtonClick() throws IOException {
        Modali(StartButton, "start.fxml");
    }
}
