package com.piggsoft.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

/**
 * <br>Created by fire pigg on 2016/4/12.
 *
 * @author piggsoft@163.com
 */
@RestController
public class HelloWorldController {


    @RequestMapping("/hello")
    public Object hello() {
        HashMap<String, String> map = new HashMap<>();
        map.put("sb", "sb");
        return map;
    }

}
