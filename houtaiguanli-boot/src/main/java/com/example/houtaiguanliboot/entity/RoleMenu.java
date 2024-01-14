package com.example.houtaiguanliboot.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("sys_role_menu")
@Data
public class RoleMenu {

    @TableField("role_id")
    private Integer roleId;
    private Integer menuId;

}
