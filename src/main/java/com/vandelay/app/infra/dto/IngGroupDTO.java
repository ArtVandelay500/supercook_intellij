package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class IngGroupDTO {
    private String seq;
    private String big_cat;
    private String catName;
    private String level;
    private String useNy;
}
