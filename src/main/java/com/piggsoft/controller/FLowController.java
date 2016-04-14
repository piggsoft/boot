package com.piggsoft.controller;

import com.piggsoft.model.Flow;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import com.wordnik.swagger.annotations.ApiResponse;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * <br>Created by fire pigg on 206/4/14.
 *
 * @author piggsoft@163.com
 */
@RequestMapping("/flow")
@RestController
@Api(value = "/flow", basePath = "/flow", description = "Hello")
public class FLowController {

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ApiOperation(value = "获取列表", httpMethod = "GET", notes = "根据用户名获取用户对象")
    @ApiResponse(code = 0, message = "success", response = List.class)
    public List<Flow> search(@ApiParam(value = "名称", name = "name", required = true) @RequestParam Flow flow) {
        return new ArrayList<>();
    }

    @RequestMapping(value = "/list/{name}", method = RequestMethod.GET)
    @ApiOperation(value = "获取列表", httpMethod = "GET", notes = "根据用户名获取用户对象")
    public List<Flow> search2(@ApiParam(value = "名称", name = "name", required = true) @PathVariable String name) {
        return new ArrayList<>();
    }

    @RequestMapping(value = "/add/{name}", method = RequestMethod.GET)
    @ApiOperation(value = "获取列表", httpMethod = "GET", notes = "根据用户名获取用户对象")
    public List<Flow> add(@ApiParam(value = "名称", name = "name", required = true) @PathVariable String name) {
        return new ArrayList<>();
    }

}
