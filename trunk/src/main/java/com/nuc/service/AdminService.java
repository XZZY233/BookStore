package com.nuc.service;

import com.nuc.model.Admin;


/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-31 10:52
 */
public interface AdminService extends BaseService<Admin> {

    /*
     * 修改密码
     */
    int updatepwd(Admin admin);


    /*
     * 根据用户主键查询当前输入的原始密码是否正确
     */
    int validatepasswordok(Admin admin);
}
