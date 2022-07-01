package com.dimple.controller;

import com.dimple.entity.Clazz;
import com.dimple.entity.Exam;
import com.dimple.entity.ExamStudent;
import com.dimple.entity.SysUser;
import com.dimple.service.ClazzService;
import com.dimple.service.ExamService;

import com.dimple.service.ExamStudentService;
import com.dimple.service.SysUserService;
import com.dimple.utils.web.AjaxResult;
import com.dimple.utils.web.BaseController;
import com.dimple.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


/**
 * 试卷管理
 */
@Controller
@RequestMapping("onlineExam/exam")
public class ExamController extends BaseController {
    //插入字符
    @Autowired
    private ExamService examService;
    @Autowired
    private ClazzService clazzService;
    @Autowired
    SysUserService sysUserService;
    @Autowired
    ExamStudentService examStudentservice;

    @GetMapping()
    public String exam() {
        return "onlineExam/exam/exam";
    }

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Exam exam) {
        startPage();
        List<Exam> exams = examService.findExamList(exam);
        return getDataTable(exams);
    }

    @GetMapping("/add")
    public String add(Model model) {
        SysUser sysUser = new SysUser();
        sysUser.setUserType("2");
        model.addAttribute("teachers", sysUserService.selectUserList(sysUser));
        model.addAttribute("clazzList", clazzService.getClazzList());
        return "onlineExam/exam/add";
    }


    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Exam exam) {
        return toAjax(examService.insert(exam));
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable Integer id, Model model) {
        Exam exam = examService.queryById(id);
        model.addAttribute("exam", exam);
        SysUser sysUser = new SysUser();
        sysUser.setUserType("2");
        model.addAttribute("trachers", sysUserService.selectUserList(sysUser));
        sysUser.setUserType("3");
        List<SysUser> studentList = sysUserService.selectUserList(sysUser);
        ExamStudent examStudent = new ExamStudent();
        examStudent.setExamId(id);
        List<ExamStudent> examStudentList = examStudentservice.queryAll(examStudent);
        List<Clazz> list = clazzService.getClazzList();
        Integer[] classIds =new Integer[studentList.size()];
        for (int i =0;i<studentList.size();i++) {
//            ExamStudent examStudent1=examStudentList.get(i);

            SysUser sysUser1 = studentList.get(i);
            for (ExamStudent examStudent1 : examStudentList) {
                if (examStudent1.getStudentId() == sysUser1.getId()) {
                    classIds[i]=sysUser1.getClassId();
                }
            }
        }
        List<Integer> listClassIds = new ArrayList();
        for(int x=0;x<classIds.length;x++){
            if(!listClassIds.contains(classIds[x])){
                listClassIds.add(classIds[x]);
            }
        }
        for (Integer ClassId : listClassIds) {
            for (Clazz clazz:
                 list) {
                if (ClassId == clazz.getClassId()) {
                    clazz.setClazzCheckFlag(true);
                }
            }
        }


        model.addAttribute("students", studentList);
        model.addAttribute("clazzList", list);
        return "onlineExam/exam/update";
    }


    @PutMapping("/update")
    @ResponseBody
    public AjaxResult updateSave(Exam exam) {
        return toAjax(examService.update(exam));
    }


    @DeleteMapping()
    @ResponseBody
    public AjaxResult delete(String ids) {
        return toAjax(examService.deleteByIds(ids));
    }
}