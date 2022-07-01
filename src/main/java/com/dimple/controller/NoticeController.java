package com.dimple.controller;


import com.dimple.entity.Notice;
import com.dimple.service.NoticeService;
import com.dimple.utils.web.AjaxResult;
import com.dimple.utils.web.BaseController;
import com.dimple.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 公告管理(Notice)表控制层
 *
 * @author makejava
 * @since 2019-05-01 11:41:47
 */
@Controller
@RequestMapping("system/notice")
public class NoticeController extends BaseController {
    @Autowired
    NoticeService noticeService;

    @GetMapping()
    public String notice() {
        return "system/notice/notice";
    }

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Notice notice) {
        startPage();
        List<Notice> notices = noticeService.findNoticeList(notice);
        return getDataTable(notices);
    }

    @GetMapping("/add")
    public String add() {
        return "system/notice/add";
    }

    @PostMapping("add")
    @ResponseBody
    public AjaxResult addSave(Notice notice) {
        return toAjax(noticeService.insert(notice));
    }

    @GetMapping("update/{id}")
    public String update(@PathVariable Integer id, Model model) {
        model.addAttribute("notice", noticeService.queryById(id));
        return "system/notice/update";
    }


    @PutMapping("update")
    @ResponseBody
    public AjaxResult updateSave(Notice notice) {
        return toAjax(noticeService.update(notice));
    }

    @DeleteMapping()
    @ResponseBody
    public AjaxResult delete(String ids) {
        return toAjax(noticeService.deleteByIds(ids));
    }
}