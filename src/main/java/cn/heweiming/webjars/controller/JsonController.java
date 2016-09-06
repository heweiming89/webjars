package cn.heweiming.webjars.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.heweiming.webjars.enumeration.OrderStatus;

@RestController
@RequestMapping("/json")
public class JsonController {

    @RequestMapping("/demo01")
    public Object demo01(){
        Map<String,Object> dataMap = new HashMap<>();
        dataMap.put("name", "曾阿牛");
        dataMap.put("age", 22);
        dataMap.put("status",OrderStatus.NEW);
        return dataMap;
    }
}
