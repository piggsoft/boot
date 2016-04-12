package com.piggsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.PlatformTransactionManager;
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

    @Autowired
    private PlatformTransactionManager transactionManager;

    @RequestMapping("/hello")
    public Object hello() {
        HashMap<String, String> map = new HashMap<>();
        System.out.println(transactionManager);
        map.put("sb", "sb");
        return map;
    }

}
