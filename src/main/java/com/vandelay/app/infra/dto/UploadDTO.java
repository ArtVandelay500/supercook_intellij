package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
public class UploadDTO {
    private String seq;
    private Integer type;
    private Integer sort;
    private String defaultNy;
    private String path;
    private String originalName;
    private String uuidName;
    private String ext;
    private long size;
    private String delNy;
    private String pseq;

}
