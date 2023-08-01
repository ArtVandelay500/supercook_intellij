package com.vandelay.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class CovidController {
    @RequestMapping("/covid")
    public String indexCovid() throws IOException {

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

        bufferedReader.close();
        httpURLConnection.disconnect();


        return "covidTest";
    }
}
