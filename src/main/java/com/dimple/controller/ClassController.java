package com.dimple.controller;

import com.dimple.entity.Clazz;
import com.dimple.entity.SysUser;
import com.dimple.entity.vo.UserVo;
import com.dimple.service.ClazzService;
import com.dimple.service.SysUserService;
import com.dimple.utils.Convert;
import com.dimple.utils.web.AjaxResult;
import com.dimple.utils.web.BaseController;
import com.dimple.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("system/class")
public class ClassController extends BaseController {
    @Autowired
    private ClazzService clazzService;
    @Autowired
    private SysUserService sysUserService;

    //主页
    @GetMapping()
    public String clazz() {

        System.out.println("afdesf");
        return "system/class/class";
    }

    //增加
    @GetMapping("/add")
    public String add() {    return "system/class/add"; }

    @PostMapping("/add")//从客户端将对应数据传给服务端
    @ResponseBody
    public AjaxResult addSave(Clazz clazz) {
        clazz.setCreateBy(getSysUser().getId());
        return toAjax(clazzService.insert(clazz));
    }

    //获取用户ID，明确修改那一条数据，
    @GetMapping("/update/{classId}")
    public String update(@PathVariable Integer classId, Model model) {
        model.addAttribute("clazz", clazzService.selectSysClassById(classId));
        return "system/class/update";
    }

    @PutMapping("/update")
    @ResponseBody
    public AjaxResult updateSave(Clazz clazz) {
        clazz.setUpdateBy(getSysUser().getId());
        return toAjax(clazzService.update(clazz));
    }

    //页面加载完成后，加载表格数据，返回数表结果集
    @GetMapping("list")
    @ResponseBody
    public TableDataInfo list(Clazz clazz) {

        startPage();
        List<Clazz> clazzes = clazzService.selectClassList(clazz);
        for (Clazz c :clazzes
                ) {
            System.out.println(c.toString());

        }
        return getDataTable(clazzes);
    }



    @DeleteMapping()
    @ResponseBody
    public AjaxResult delete(String ids) {
        SysUser sysUser =new SysUser();

        for (Integer id:Convert.toIntArray(ids)) {

            sysUser.setClassId(id);
            List<SysUser> user = sysUserService.selectUserList(sysUser);
            System.out.println(user.size());
            if (user.size()>0){
                return error("此班级内还有学生不能删除！");
            }
        }
        return toAjax(clazzService.deleteByIds(ids));
    }
}
