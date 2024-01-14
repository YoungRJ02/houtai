package com.example.houtaiguanliboot.service;

import com.example.houtaiguanliboot.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author young
 * @since 2023-10-21
 */
public interface IMenuService extends IService<Menu> {

    List<Menu> findMenus(String name);
}

