package cn.heweiming.webjars.learn.json;

import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.heweiming.webjars.enumeration.OrderStatus;

public class JacksonDemo {

    public static void main(String[] args) {
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String,Object> dataMap = new HashMap<>();
        dataMap.put("name", "曾阿牛");
        dataMap.put("age", 22);
        dataMap.put("status",OrderStatus.NEW);
        
        try {
            String json1 = objectMapper.writeValueAsString(OrderStatus.NEW);
            String json2 = objectMapper.writeValueAsString(dataMap);
            System.out.println(json1);
            System.out.println(json2);
        } catch (JsonProcessingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        
        
        
    }
}
