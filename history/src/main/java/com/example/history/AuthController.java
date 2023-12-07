package com.example.history;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import java.io.IOException;
import java.sql.SQLException;

public class AuthController extends Modal {

    @FXML
    private TextField login_field;
    @FXML
    private TextArea err;

    @FXML
    private PasswordField password_field;
    @FXML
    private Button StartButton;

    @FXML
    private Button SignInButton;

    @FXML
    private Button SignUpButton;

    public static String currentLogin;

    public static String currentPassword;
    DataBaseHandler dbHandler = new DataBaseHandler();

    public void OnSignUpButtonClick() throws IOException, SQLException, ClassNotFoundException {
        signUpNewUser();

    }

    public void OnSignInButtonClick() throws IOException, SQLException {
        String loginText = login_field.getText().trim();
        String password = password_field.getText().trim();
        User user = new User(loginText, password);
        if (!loginText.isEmpty() && !password.isEmpty()) {
            if (dbHandler.ThereIsName(user) && dbHandler.PasswordFits(user)) {
                currentLogin = loginText;
                currentPassword = password;
                Modali(SignInButton, "chat.fxml");
            } else
                err.setText("Неправильно введен логин или пароль");

        } else err.setText("Логин или пароль пустые");

    }

    private void signUpNewUser() throws SQLException, ClassNotFoundException, IOException {
        String loginText = login_field.getText().trim();
        String password = password_field.getText().trim();
        User user = new User(loginText, password);
        if (!dbHandler.ThereIsName(user)) {
            dbHandler.signUpUser(user);
            currentLogin = loginText;
            currentPassword = password;
            Modali(SignUpButton, "chat.fxml");
        } else
            err.setText("Попробуйте другой логин");
    }

    public void OnStartButtonClick() throws IOException {
        Modali(StartButton, "start.fxml");
    }
}
