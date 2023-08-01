package com.vandelay.app.infra.service;

import com.vandelay.app.controller.Constants;
import com.vandelay.app.controller.UtilDateTime;
import com.vandelay.app.infra.dto.CodeDTO;
import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.dto.RecipeDTO;
import com.vandelay.app.infra.dto.UploadDTO;
import com.vandelay.app.infra.repository.RecipeRepository;
import com.vandelay.app.infra.vo.RecipeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class RecipeService {
    private final RecipeRepository recipeRepository;

    public int selectOneCount(RecipeVo vo) {
        return recipeRepository.selectOneCount(vo);
    }

    public List<CodeDTO> selectList(RecipeVo vo) {
        return recipeRepository.selectList(vo);
    }

    public RecipeDTO selectOne(RecipeVo vo) {
        return recipeRepository.selectOne(vo);
    }
    public int insert(RecipeDTO dto){
        recipeRepository.insert(dto);
        System.out.println("레시피 seq는:  " + dto.getSeq());

        String[] ingredientSeqArray = dto.getIngredient_seqArray();
        String[] ingredientAmountArray = dto.getIngredientAmountArray(); // Assuming you have a method to get this array
//        재료 넣기
        for (int i = 0; i < ingredientSeqArray.length; i++) {
            String item = ingredientSeqArray[i];
            String ingredientAmount = ingredientAmountArray[i];

            System.out.println("아이템은: " + item);
            System.out.println("수량은: " + ingredientAmount);

            dto.setSeq(dto.getSeq());

            // Assuming you have a method to set ingredientAmount in your DTO
            dto.setIngredient_seq(item);
            dto.setIngredientAmount(ingredientAmount);

            recipeRepository.insertIng(dto);
        }

        return 1;

    }


    /**
     *
     * @param dto 레시피 dto
     * @return dummy return
     */
    public int update(RecipeDTO dto) {
        recipeRepository.update(dto);
        //Deleting pre-exisitng list of IngredientArray to overwrite with new Insert
        recipeRepository.deleteUpdate(dto);

        String[] ingredientSeqArray = dto.getIngredient_seqArray();
        String[] ingredientAmountArray = dto.getIngredientAmountArray(); // Assuming you have a method to get this array

        for (int i = 0; i < ingredientSeqArray.length; i++) {
            String item = ingredientSeqArray[i];
            String ingredientAmount = ingredientAmountArray[i];

            System.out.println("아이템은: " + item);
            System.out.println("수량은: " + ingredientAmount);

            dto.setIngredient_seq(item);
            dto.setSeq(dto.getSeq());

            // Assuming you have a method to set ingredientAmount in your DTO
            dto.setIngredientAmount(ingredientAmount);

            recipeRepository.insertIng(dto);
        }


        return 1;
    }

    public int delete(RecipeVo vo) {
        recipeRepository.deleteUpload(vo);
        recipeRepository.delete(vo);
        return 1;
    }

    public List<RecipeDTO> selectIngList(RecipeDTO dto) {
        return recipeRepository.selectIngList(dto);
    }


//RECIPE THUMBNAIL IMAGE UPLOAD
//RECIPE THUMBNAIL IMAGE UPLOAD
public void uploadFiles(MultipartFile[] multipartFiles, RecipeDTO dto, String tableName, int type, int maxNumber) throws Exception {

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
            dto.setSort(maxNumber + i);
            dto.setPseq(dto.getSeq());

            recipeRepository.insertUploaded(dto);
        }
    }
}

    public List<UploadDTO> selectListUpload(RecipeDTO dto) {
        return recipeRepository.selectListUpload(dto);
    }
//RECIPE THUMBNAIL IMAGE UPLOAD
//RECIPE THUMBNAIL IMAGE UPLOAD










}//end of the service
