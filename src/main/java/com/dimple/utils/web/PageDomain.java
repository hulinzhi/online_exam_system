package com.dimple.utils.web;

import com.dimple.utils.StringUtils;
import lombok.Data;

/**
 * @className: PageDomain
 * @description: 分页数据
 * @auther: Dimple
 * @Version: 1.1
 */
@Data
public class PageDomain {
    /**
     * 当前记录起始索引
     */
    private Integer pageNum;
    /**
     * 每页显示记录数
     */
    private Integer pageSize;
    /**
     * 排序列
     */
    private String orderByColumn;
    /**
     * 排序的方向 "desc" 或者 "asc".
     */
    private String isAsc;

    public String getOrderBy() {
        if (StringUtils.isEmpty(orderByColumn)) {
            return "";
        }
        return StringUtils.toUnderScoreCase(orderByColumn) + " " + isAsc;
    }
}
