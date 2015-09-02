package com.lob.examples;

import java.util.Map;
import java.util.concurrent.ExecutionException;

import cn.itcast.oa.domain.Information;

import com.google.common.collect.Maps;
import com.lob.client.AsyncLobClient;
import com.lob.client.LobClient;
import com.lob.protocol.request.AddressRequest;
import com.lob.protocol.request.LetterRequest;
import com.lob.protocol.response.AddressResponse;
import com.lob.protocol.response.LetterResponse;

import cn.itcast.oa.domain.Information;

public class CreateLetter{
	public void createletter(Information information) throws InterruptedException, ExecutionException{
	  // testService.saveTwoUsers();
	  final String apiKey = "test_0dc8d51e0acffcb1880e0f19c79b2f5b0cc"; // Replace this API key with your own.
     final LobClient client = AsyncLobClient.createDefault(apiKey);
  
        
      // Creating an Address Object
     final AddressRequest exampleAddressRequest = AddressRequest.builder()
          .name("YUE Liu")
          .line1("104, Printing Boulevard")
          .city("Millbrae")
          .state("CA")
          .country("us")
          .zip("94030")
          .build();
     final AddressResponse exampleAddressResponse = client.createAddress(exampleAddressRequest).get();
	
      //Creating Letter      
     final LetterRequest letterRequest = LetterRequest.builder()
        .description("Test Letter")
        .to(AddressRequest.builder()
          .name(information.getName())
          .line1(information.getAddress1())
          .city(information.getCity())
          .state(information.getState())
          .zip(information.getZipcode())
          .email(information.getEmail())
          .country(information.getCountry())
          .build())
        .from(exampleAddressResponse.getId())
        .file("<html style='padding-top: 3in; margin: .5in;'>HTML Letter for {{name}}</html>")
        .color(true)
        .build();
      
       final LetterResponse letter = client.createLetter(letterRequest).get();    
       System.out.println("letter Response");
       System.out.println("=======================================================");
       System.out.println();
       System.out.println(letter);
       System.out.println();
       System.out.println("=======================================================");
       System.out.println();
       System.out.println();
  }
}
