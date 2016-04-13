package com.piggsoft.mapper;

import com.piggsoft.model.Flow;
import com.piggsoft.model.FlowExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FlowMapper extends BaseMapper<Flow, FlowExample> {
    int countByExample(FlowExample example);

    int deleteByExample(FlowExample example);

    int deleteByPrimaryKey(String id);

    int insert(Flow record);

    int insertSelective(Flow record);

    List<Flow> selectByExample(FlowExample example);

    Flow selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Flow record, @Param("example") FlowExample example);

    int updateByExample(@Param("record") Flow record, @Param("example") FlowExample example);

    int updateByPrimaryKeySelective(Flow record);

    int updateByPrimaryKey(Flow record);
}