package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CovidDTO {

    public Object header;
    public String resultCode;
    public String resultMsg;

    public Object body;
    public int pageNo;
    public int totalCount;
    public int numOfRows;

    public Object[] items;
    public String YYYY;
    public String MM;
    public String KIT_PROD_QTY;
    public String KIT_EXPRT_QTY;
    public String KIT_STOCK_QTY;
}
