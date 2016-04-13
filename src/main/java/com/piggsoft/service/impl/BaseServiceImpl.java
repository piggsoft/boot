package com.piggsoft.service.impl;

import com.piggsoft.mapper.BaseMapper;
import com.piggsoft.service.BaseService;

/**
 * <br>Created by fire pigg on 2016/4/13.
 *
 * @author piggsoft@163.com
 */
public abstract class BaseServiceImpl<Model, Example> implements BaseService<Model, Example> {

    abstract BaseMapper<Model, Example> getBaseMapper();

    @Override
    public void save(Model model) {
        getBaseMapper().insertSelective(model);
    }

}
