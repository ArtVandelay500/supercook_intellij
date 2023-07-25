package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
public class CodeDTO {
    private String seq;
    private String codeGroup_seq;
    private String name;
    private String codeName;
    private int delNy;
    private String recipe_seq;
    private String code_seq;

    public static List<CodeDTO> cachedCodeArrayList = new ArrayList<CodeDTO>();

}
