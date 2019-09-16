package com.nuc.service.impl;

import com.nuc.model.Admin;
import com.nuc.service.AdminService;
import org.springframework.stereotype.Service;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-31 10:53
 */
@Service("adminService")
public class AdminServiceImpl extends BaseServiceImpl<Admin> implements AdminService {
    /*
     * 修改密码
     */
    @Override
    public int updatepwd(Admin admin)
    {
        return adminMapper.updatepwd(admin);
    }

    /*
     * 根据用户主键查询当前输入的原始密码是否正确
     */
    @Override
    public int validatepasswordok(Admin admin)
    {
        return adminMapper.validatepasswordok(admin);
    }
}
