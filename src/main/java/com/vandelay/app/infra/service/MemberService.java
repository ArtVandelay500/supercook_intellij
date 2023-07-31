package com.vandelay.app.infra.service;

import com.vandelay.app.controller.Constants;
import com.vandelay.app.controller.UtilDateTime;
import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.dto.UploadDTO;
import com.vandelay.app.infra.repository.MemberRepository;
import com.vandelay.app.infra.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.lang.reflect.Member;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public int save(MemberDTO dto) {
        return memberRepository.save(dto);
    }

    public List<MemberDTO> selectList() {
        return memberRepository.selectList();
    }

    public MemberDTO selectOne(MemberDTO dto) {
        return memberRepository.selectOne(dto);
    }

    public int update(MemberDTO dto) throws Exception {
        memberRepository.update(dto);
        memberRepository.deleteUpload(dto);
        uploadFiles(dto.getUploadImgProfile(), dto, "uploadList", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
        return 1;
    }



    public int delete(MemberDTO dto) {
        memberRepository.deleteUpload(dto);
        memberRepository.delete(dto);
        return 1;
    }


    public MemberDTO selectOneAJAX(MemberVo vo) {
        return memberRepository.selectOneAJAX(vo);
    }


    public int selectOneCheckId(MemberVo vo) {
        return memberRepository.selectOneCheckId(vo);
    }


    public int insert(MemberDTO dto) throws Exception {
        memberRepository.insert(dto);
        uploadFiles(dto.getUploadImgProfile(), dto, "uploadList", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
        return 1;
    }
//MEMBER PROFILE IMAGE SERVICE
//MEMBER PROFILE IMAGE SERVICE


public void uploadFiles(MultipartFile[] multipartFiles, MemberDTO dto, String tableName, int type, int maxNumber) throws Exception {

    for(int i=0; i<multipartFiles.length; i++) {

        if(!multipartFiles[i].isEmpty()) {

            String className = dto.getClass().getSimpleName().toString().toLowerCase();
            String fileName = multipartFiles[i].getOriginalFilename();
            String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
            String uuid = UUID.randomUUID().toString();
            String uuidFileName = uuid + "." + ext;
            String pathModule = className;
            String nowString = UtilDateTime.nowString();
            String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
            String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
//          String path = Constants.UPLOAD_PATH_PREFIX  + "/";
            String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";

            File uploadPath = new File(path);

            if (!uploadPath.exists()) {
                uploadPath.mkdirs();
            } else {
                // by pass
            }

            multipartFiles[i].transferTo(new File(path + uuidFileName));

            dto.setPath(pathForView);
            dto.setOriginalName(fileName);
            dto.setUuidName(uuidFileName);
            dto.setExt(ext);
            dto.setSize(multipartFiles[i].getSize());

            dto.setTableName(tableName);
            dto.setType(type);
            dto.setDefaultNy(dto.getDefaultNy());
//          dto.setSort(maxNumber + i);
            dto.setPseq(dto.getSeq());

            memberRepository.insertUploaded(dto);


        }
    }
}

    public List<UploadDTO> selectListUpload(MemberDTO dto) {
        return memberRepository.selectListUpload(dto);
    }


//MEMBER PROFILE IMAGE SERVICE
//MEMBER PROFILE IMAGE SERVICE


}//END OF MEMBER SERVICE
