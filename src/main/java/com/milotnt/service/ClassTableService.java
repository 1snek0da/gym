package com.milotnt.service;

import com.milotnt.pojo.ClassTable;

import java.util.List;

/**
 * @author ZhangMing [1157038410@qq.com]
 * @date 2024/8/11
 */

public interface ClassTableService {

    //查询所有课程
    List<ClassTable> findAll();

    //根据id删除课程
    Boolean deleteClassByClassId(Integer classId);

    //添加课程
    Boolean insertClass(ClassTable classTable);

    //根据id查询课表
    ClassTable selectByClassId(Integer classId);

    //根据id删除已预约的课程
    Boolean deleteOrderByClassId(Integer classId);

}
