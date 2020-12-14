package kr.ync.util;

import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

public class SteamJSONParse {
	
	@PostMapping("/steamJSONParse")
	public static JSONObject steamJSONParse(Long appids) {
		
		
		//JSONObject inp = request.getParameter("param1");
		String requestUrl = "https://store.steampowered.com/api/appdetails?appids=";
		requestUrl += appids;
		requestUrl += "&l=korean";
		
		JSONParser parser = new JSONParser();
		System.out.println("parser : " + parser);
		//JSONObject obj = null;
		JSONObject jsonObject = null;
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
        
		return jsonObject;
		
	}
}
