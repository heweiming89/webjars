package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.User;
import java.util.List;

public interface UserMapper {
    
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    User selectByPrimaryKey(Long id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);
}