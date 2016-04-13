package com.piggsoft.service.impl;

import com.piggsoft.mapper.BaseMapper;
import com.piggsoft.mapper.FlowMapper;
import com.piggsoft.model.Flow;
import com.piggsoft.model.FlowExample;
import com.piggsoft.service.FlowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <br>Created by fire pigg on 2016/4/13.
 *
 * @author piggsoft@163.com
 */
@Service
public class FlowServiceImpl extends BaseServiceImpl<Flow, FlowExample> implements FlowService {


    @Autowired
    private FlowMapper flowMapper;

    @Override
    BaseMapper<Flow, FlowExample> getBaseMapper() {
        return flowMapper;
    }
}
