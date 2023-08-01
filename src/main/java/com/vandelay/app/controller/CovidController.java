package com.vandelay.app.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vandelay.app.infra.dto.CovidDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CovidController {
    @RequestMapping("/covid")
    public String indexCovid(Model model) throws IOException {

        String apiUrl = "https://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=lLcMxW2C0vP%2FMqJspFD4sy5ffJ2QQbWT671ZE%2FJAQxMx2h4fSHrmERaDVHVGQ3Y8MgeDgMiGyLRj5JCa5P%2FTVg%3D%3D&type=json";

        URL url = new URL(apiUrl);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod("GET");

        BufferedReader bufferedReader;
        if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        }

        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = bufferedReader.readLine()) != null) {
            System.out.println("line: " + line);
            stringBuilder.append(line);
        }

        ObjectMapper objectMapper = new ObjectMapper();

        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);

        System.out.println("######## Map");
        for (String key : map.keySet()) {
            String value = String.valueOf(map.get(key));	// ok
            System.out.println("[key]:" + key + ", [value]:" + value);
        }


        Map<String, Object> header = new HashMap<String, Object>();
        header = (Map<String, Object>) map.get("header");

        System.out.println("######## Header");
        for (String key : header.keySet()) {
            String value = String.valueOf(header.get(key));	// ok
            System.out.println("[key]:" + key + ", [value]:" + value);
        }

        String getKey = (String)header.get("resultCode");

        System.out.println("resultCode: " + getKey);
        System.out.println("resultMsg: " + header.get("resultMsg"));


        Map<String, Object> body = new HashMap<String, Object>();
        body = (Map<String, Object>) map.get("body");

        List<CovidDTO> items = new ArrayList<CovidDTO>();
        items = (List<CovidDTO>) body.get("items");

        System.out.println("items.size(): " + items.size());

//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}

        model.addAllAttributes(header);
        model.addAllAttributes(body);




        bufferedReader.close();
        httpURLConnection.disconnect();
        return "covidTest";
    }
}
