package com.example.history;

import com.example.history.client.ClientThread;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

import java.io.IOException;
import java.net.*;
import java.sql.SQLException;

import static com.example.history.AuthController.currentLogin;
import static com.example.history.AuthController.currentPassword;

public class ChatController extends Modal {

    @FXML
    private Button StartButton;

    @FXML
    private TextArea messageArea;

    @FXML
    private TextField inputBox;

    private static final DatagramSocket socket;

    static {
        try {
            socket = new DatagramSocket();
        } catch (SocketException e) {
            throw new RuntimeException(e);
        }
    }

    private static final InetAddress address;

    static {
        try {
            address = InetAddress.getByName("localhost");
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }

    private final int SERVER_PORT = 8000;

    public void OnStartButtonClick() throws IOException {
        Modali(StartButton, "start.fxml");
    }

    DataBaseHandler dbHandler = new DataBaseHandler();

    public void OnEnterPressed(KeyEvent keyEvent) throws SQLException, ClassNotFoundException {
        if (keyEvent.getCode() == KeyCode.ENTER) {
            User user = new User();
            user.setName(currentLogin);
            user.setPassword(currentPassword);
            String temp = user.getName() + ": " + inputBox.getText();
            messageArea.setText(messageArea.getText() + temp + "\n");
            byte[] msg = temp.getBytes();
            Message message = new Message();
            message.setTexxt(inputBox.getText());
            message.setUserId(dbHandler.getUserID(user));
            dbHandler.sendMessage(message);
            inputBox.setText("");
            DatagramPacket send = new DatagramPacket(msg, msg.length, address, SERVER_PORT);
            try {
                socket.send(send);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @FXML
    void initialize() throws IOException, SQLException {
        dbHandler.showMessages(messageArea);
        ClientThread clientThread = new ClientThread(socket, messageArea);
        clientThread.start();
        byte[] uuid = ("init" + currentLogin).getBytes();
        DatagramPacket initialize = new DatagramPacket(uuid, uuid.length, address, SERVER_PORT);
        socket.send(initialize);
    }


}


