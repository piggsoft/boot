package com.piggsoft.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <br>Created by fire pigg on 2016/4/13.
 *
 * @author piggsoft@163.com
 */
public interface BaseMapper<Model, Example> {

    int countByExample(Example example);

    List<Model> selectByExample(Example example);

    Model selectByPrimaryKey(String id);

    int insert(Model record);

    int insertSelective(Model record);

    int updateByPrimaryKeySelective(Model record);

    int updateByPrimaryKey(Model record);

    int updateByExampleSelective(@Param("record") Model record,
                                 @Param("example") Example example);

    int updateByExample(@Param("record") Model record,
                        @Param("example") Example example);

    int deleteByPrimaryKey(String id);

}
