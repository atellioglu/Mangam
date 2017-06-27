package com.tll.util;

import org.json.JSONObject;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by abdullahtellioglu on 26/06/17.
 */
public class Util {
    private static String UPLOADED_FOLDER = System.getProperty("user.home");

    public static int toInt(String str){
        try{
            return Integer.parseInt(str);
        }catch (Exception ex){
            return 0;
        }
    }
    public static final String SIMPLE_DATE_FORMAT = "dd/MM/yyyy";
    static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SIMPLE_DATE_FORMAT);
    public static String getDateString(Date date){

        return simpleDateFormat.format(date);
    }
    public static Date getDateFromString(String date){
        try {
            return simpleDateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
            return new Date();
        }
    }

    public static String uploadEpisodeImage(String fileName,MultipartFile multipartFile){
        return uploadFile(UPLOADED_FOLDER+"/episodes/",fileName,multipartFile);
    }
    public static String uploadMangaImage(String fileName,MultipartFile multipartFile){
        return uploadFile(UPLOADED_FOLDER+"/images/",fileName,multipartFile);
    }
    public static String jsonResponseObj(boolean success){
        return jsonResponseObj(success,null,null,null);
    }
    public static String jsonResponseObj(boolean success,String error){
        return jsonResponseObj(success,error,null,null);
    }
    public static String jsonResponseObj(boolean success,String error,String redirect_url,String attr){
        JSONObject object = new JSONObject();
        try{
            object.put("success",success ? 1 : 0);
            if(error==null){
                object.put("error","");
            }else{
                object.put("error",error);
            }
            if(redirect_url == null){
                object.put("redirect_url","");
            }else{
                object.put("redirect_url",redirect_url);
            }
            if(attr == null){
                object.put("attr","");
            }else{
                object.put("attr",attr);
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return object.toString();
    }
    public static String uploadFile(String directory, String fileName, MultipartFile multipartFile){
        if(multipartFile == null || multipartFile.isEmpty())
            return null;
        try {
            File uploadFolder = new File(directory);
            uploadFolder.mkdir();
            // Get the file and save it somewhere
            byte[] bytes = multipartFile.getBytes();
            Path path = Paths.get(directory + fileName);
            Files.write(path, bytes);
            return directory+fileName;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
