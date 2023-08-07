package com.vandelay.app.infra.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
public class MemberDTO {
    private String seq;
    private String email;
    private String pwd;
    private String delNy;
    private String hasFileChangedProfile;
    private MultipartFile[] uploadImg;
    private MultipartFile[] uploadImgProfile;
    private Integer uploadImgType;
    private Integer uploadImgProfileType;
    private Integer uploadImgMaxNumber;
    private Integer uploadImgProfileMaxNumber;
    private String[] uploadImgDeleteSeq;
    private String[] uploadImgDeletePathFile;
    //MEMBER PROFILE DTO
    //MEMBER PROFILE DTO
    private String tableName;
    private Integer type;
    private Integer defaultNy;
    private Integer sort;
    private String path;
    private String originalName;
    private String uuidName;
    private String ext;
    private long size;
    private String pseq;
    //MEMBER PROFILE DTO
    //MEMBER PROFILE DTO
}
