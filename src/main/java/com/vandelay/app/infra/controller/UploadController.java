package com.vandelay.app.infra.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.util.UUID;


@Controller
public class UploadController {
    @Resource(name = "uploadPath")
    private String uploadPath;
    private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

    @RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
    public String uploadFormGet() {
        return "admin/infra/prj_1/recipe/upload";
    }

//    @RequestMapping( value = "/uploadForm", method = RequestMethod.POST)
//    public String uploadForm(@RequestParam("file") MultipartFile file, Model model)
//    throws Exception{
//        logger.info("originalName: "  + file.getOriginalFilename());
//        logger.info("size: " + file.getSize());
//        logger.info("contentType: " + file.getContentType());
////        System.out.println(uploadPath);
//
//        String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
//        model.addAttribute("savedName",savedName);
//
////        return "admin/infra/prj_1/recipe/upload";
//        return "uploadResult";
//    }
//
//    private String uploadFile(String originalName, byte[] fileData)
//        throws Exception{
//        UUID uid = UUID.randomUUID();
//        String savedName = uid.toString() + "_" + originalName;
//        File target = new File(uploadPath,savedName);
//        FileCopyUtils.copy(fileData,target);
//        return savedName;
//    }




}// end of controller

