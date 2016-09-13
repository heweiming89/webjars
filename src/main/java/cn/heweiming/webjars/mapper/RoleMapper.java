package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.Role;
import java.util.List;

public interface RoleMapper {
    
    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    Role selectByPrimaryKey(Long id);

    List<Role> selectAll();

    int updateByPrimaryKey(Role record);
}