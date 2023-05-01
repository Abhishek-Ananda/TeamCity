package com.aaacomunity.program;

import java.util.ArrayList;
import java.util.List;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AaacomunityApplication {

	public static void main(String[] args) {
		SpringApplication.run(AaacomunityApplication.class, args);
         String smallest = "";
    String largest = "";
    String s = "welcometojava";
    int k = 3;
    char c;
    List<String> listOfSubstring = new ArrayList<>();
    for (int i = 0; i < s.length() - 2; i++) {
      listOfSubstring.add(s.substring(i, i + 3));
      System.out.println(listOfSubstring);
      System.out.println(s);


    }
  }

}
