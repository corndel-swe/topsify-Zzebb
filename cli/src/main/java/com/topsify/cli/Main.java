package com.topsify.cli;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


public class Main {

    public static void main(String[] args) {
        System.out.println("Hello World!");


        String fileName = "users.json";


            try {
                Path filePath = Paths.get("reports", fileName );
                List<String> lines = Files.readAllLines(filePath);
                System.out.println(lines);

                //map to object
                //input to SQL file#




            } catch (Exception e) {
                System.out.println(e);
            }

    }
}
