package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.repository.CodeRepository;
import com.vandelay.app.infra.vo.CodeVo;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CodeService {
    private final CodeRepository codeRepository;

    public List<CodeDTO> selectList(CodeVo vo) {
        return codeRepository.selectList(vo);
    }

    public CodeDTO selectOne(CodeVo vo) {
        return codeRepository.selectOne(vo);
    }

    public int update(CodeDTO dto) {
         return codeRepository.update(dto);
    }

    public int insert(CodeDTO dto) {
        return codeRepository.insert(dto);
    }

    public int delete(CodeVo vo) { return codeRepository.delete(vo);}

    public int selectOneCount(CodeVo vo){ return codeRepository.selectOneCount(vo);};

//Code Vo











    @PostConstruct
    public void selectListCachedCodeArrayList() throws Exception{
        List<CodeDTO> codeListFromDb = (ArrayList<CodeDTO>)codeRepository.selectListCachedCodeArrayList();
        codeListFromDb = (ArrayList<CodeDTO>) codeRepository.selectListCachedCodeArrayList();
        CodeDTO.cachedCodeArrayList.clear();
        CodeDTO.cachedCodeArrayList.addAll(codeListFromDb);
        System.out.println("cachedCodeArrayList: " + CodeDTO.cachedCodeArrayList.size() + " cached!");
    }
    public static void clear() throws Exception{
        CodeDTO.cachedCodeArrayList.clear();
    }

    public static List<CodeDTO> selectListCachedCode(String seq) throws Exception{
        List<CodeDTO> rt = new ArrayList<CodeDTO>();
        for(CodeDTO codeRow: CodeDTO.cachedCodeArrayList){
            if(codeRow.getCodeGroup_seq().equals(seq)){
                rt.add(codeRow);
            }else{
                //bypass
            }
        }
        return rt;
    }
    public static String selectOneCachedCode(int code) throws Exception{
        String rt="";
        for(CodeDTO codeRow : CodeDTO.cachedCodeArrayList){
            if(codeRow.getCodeGroup_seq().equals(Integer.toString(code))){
                rt = codeRow.getName();
            }else{
                //bypass
            }
        }
        return rt;
    }


    public List<CodeDTO> selectOneShKeyCode(RecipeVo vo) {
        return codeRepository.selectOneShKeyCode(vo);
    }
}
