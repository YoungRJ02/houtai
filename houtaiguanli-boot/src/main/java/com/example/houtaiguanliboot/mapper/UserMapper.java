package com.example.houtaiguanliboot.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.houtaiguanliboot.controller.dto.UserPasswordDTO;
import com.example.houtaiguanliboot.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author young
 * @since 2023-10-07
 */
public interface UserMapper extends BaseMapper<User> {
    @Update("update user set password = #{newPassword} where username = #{username} and password = #{password}")
    int updatePassword(UserPasswordDTO userPasswordDTO);
    Page<User> findPage(Page<User> page, @Param("username") String username, @Param("email") String email, @Param("address") String address);
}
