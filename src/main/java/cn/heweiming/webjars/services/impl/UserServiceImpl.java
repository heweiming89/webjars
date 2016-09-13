package cn.heweiming.webjars.services.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.heweiming.webjars.mapper.UserMapper;
import cn.heweiming.webjars.model.User;
import cn.heweiming.webjars.services.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    
    @Override
    public User createUser(User user) {
        
        return null;
    }

    @Override
    public void changePassword(Long userId, String newPassword) {
        // TODO Auto-generated method stub

    }

    @Override
    public void correlationRoles(Long userId, Long... roleIds) {
        // TODO Auto-generated method stub

    }

    @Override
    public void uncorrelationRoles(Long userId, Long... roleIds) {
        // TODO Auto-generated method stub

    }

    @Override
    public User findByUsername(String username) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Set<String> findRoles(String username) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Set<String> findPermissions(String username) {
        // TODO Auto-generated method stub
        return null;
    }

}
