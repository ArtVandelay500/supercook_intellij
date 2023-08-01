package com.vandelay.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CovidController {
    @RequestMapping("/covid")
    public String indexCovid(){

        String apiURL = "https://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=lLcMxW2C0vP%2FMqJspFD4sy5ffJ2QQbWT671ZE%2FJAQxMx2h4fSHrmERaDVHVGQ3Y8MgeDgMiGyLRj5JCa5P%2FTVg%3D%3D&type=json";

        return "covidTest";
    }
}
