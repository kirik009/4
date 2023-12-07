package com.example.history;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.input.KeyCode;
import javafx.scene.input.MouseEvent;

import java.io.IOException;

public class StartController extends Modal {
    @FXML
    private Button AuthorButton;

    @FXML
    private Button ChatButton;

    @FXML
    private Button HistoryButton;

    public void onHistoryButtonClick() throws IOException {
        Modali(HistoryButton, "history.fxml");
    }

    public void onChatButtonClick() throws IOException {
        Modali(ChatButton, "auth.fxml");
    }

    //    public void onAuthorButtonClick() throws IOException{
//       Modali(AuthorButton, "author.fxml");
//    }
    @FXML
    void initialize() {
        AuthorButton.addEventHandler(MouseEvent.MOUSE_CLICKED, new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                try {
                    Modali(AuthorButton, "author.fxml");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        });
    }
}