package com.example.history.server;

import java.io.IOException;
import java.net.*;
import java.util.ArrayList;


public class ChatServer {

    private static final ArrayList<Integer> userss = new ArrayList<>();
    private static final int PORT = 8000;
    private static final byte[] incoming = new byte[256];
    private static final DatagramSocket socket;

    static {
        try {
            socket = new DatagramSocket(PORT);
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

    public static void main(String[] args) {
        while (true) {
            DatagramPacket packet = new DatagramPacket(incoming, incoming.length);
            try {
                socket.receive(packet);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

            String message = new String(packet.getData(), 0, packet.getLength());

            if (message.contains("init")) {
                userss.add(packet.getPort());
            } else {
                int userPort = packet.getPort();
                byte[] byteMessage = message.getBytes();

                for (int forward_port : userss) {
                    if (forward_port != userPort) {
                        DatagramPacket forward = new DatagramPacket(byteMessage, byteMessage.length, address, forward_port);
                        try {
                            socket.send(forward);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
        }
    }
}
