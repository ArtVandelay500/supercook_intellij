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

    /**
     * @param vo: pagination data
     * @return: Total number of data rows
     */
    public int selectOneCount(RecipeVo vo) {
        return recipeRepository.selectOneCount(vo);
    }

    /**
     * @param vo #{shKey}
     * @return: Normal Select List from recipe w/ #{shKey}
     */
    public List<CodeDTO> selectList(RecipeVo vo) {
        return recipeRepository.selectList(vo);
    }

    /**
     * @param vo: recipe's seq
     * @return: selecting one set of data matching with the following vo value (seq)
     */
    public RecipeDTO selectOne(RecipeVo vo) {
        return recipeRepository.selectOne(vo);
    }

    /**
     * @param dto: required dtos to insert data
     * @return: insert into recipe and also insert into recipeIngredient using 'last_insert_id' from recipe.
     */
    public int insert(RecipeDTO dto) throws Exception {
        //Inserting data into 'recipe' table
        recipeRepository.insert(dto);
        //Inserting data into 'uploadList' table
        uploadFiles(dto.getUploadImg(), dto, "uploadList", dto.getUploadImgType(), dto.getUploadImgMaxNumber());

        System.out.println("레시피 seq는:  " + dto.getSeq());

        String[] ingredientSeqArray = dto.getIngredient_seqArray();
        String[] ingredientAmountArray = dto.getIngredientAmountArray(); // Assuming you have a method to get this array

        //Inserting data into 'recipeIngredient' table
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
     * @param dto 레시피 dto (seq)
     * @return: update recipe Table and, delete and re-insert recipeIngredient Array
     */
    public int update(RecipeDTO dto) throws Exception {
        recipeRepository.update(dto);

        //Deleting pre-existing list of IngredientArray to overwrite with new Insert
        recipeRepository.deleteUpdate(dto);

        //Deleting pre-existing list of uploadLOst to overwrite with new Insert
        recipeRepository.deleteUpload(dto);
        //Inserting data into 'uploadList'
        uploadFiles(dto.getUploadImg(), dto, "uploadList", dto.getUploadImgType(), dto.getUploadImgMaxNumber());

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


    /**
     *
     * @param dto: recipe's seq
     * @return: This deletes data from the following: recipe,recipeIngredient and uploadList
     */
    public int delete(RecipeDTO dto) {
        recipeRepository.deleteUpload(dto);
        recipeRepository.delete(dto);
        return 1;
    }

    public List<RecipeDTO> selectIngList(RecipeDTO dto) {
        return recipeRepository.selectIngList(dto);
    }


//RECIPE THUMBNAIL IMAGE UPLOAD
//RECIPE THUMBNAIL IMAGE UPLOAD

    /**
     * @param multipartFiles: The golden nugget of this whole process: list of files retrieved from the jsp
     * @param dto: Recipe's dto and also UploadList's dto
     * @param tableName: name of the table that would retrieve this data (in this case: uploadList)
     * @param type: from recipeForm.jsp (whether this is profile/img/file
     * @param maxNumber: from recipeForm.jsp
     * @throws Exception: This function requires 'Throw/Exception'
     */
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

    /**
     * @param dto: recipe's seq (uploadList's pseq)
     * @return: returns a set of data macthing with that seq from 'uploadList' table
     */
    public List<UploadDTO> selectListUpload(RecipeDTO dto) {
        return recipeRepository.selectListUpload(dto);
    }
//RECIPE THUMBNAIL IMAGE UPLOAD
//RECIPE THUMBNAIL IMAGE UPLOAD










}//end of the service
