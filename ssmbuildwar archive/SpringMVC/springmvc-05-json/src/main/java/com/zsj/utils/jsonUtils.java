package com.zsj.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import java.text.SimpleDateFormat;

public class jsonUtils {

    public static String getjson(Object object){
        return getjson(object,"yyyy-MM-dd HH:mm:ss");
    }
    public static String getjson(Object object,String sdf){
        ObjectMapper mapper = new ObjectMapper();
        //不使用时间戳
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS,false);
        //自定义日期的格式
        SimpleDateFormat sd = new SimpleDateFormat(sdf);
        mapper.setDateFormat(sd);
        try {
            return mapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }
}
