package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.Permission;
import java.util.List;

public interface PermissionMapper {
    
    int deleteByPrimaryKey(Long id);

    int insert(Permission record);

    Permission selectByPrimaryKey(Long id);

    List<Permission> selectAll();

    int updateByPrimaryKey(Permission record);
}