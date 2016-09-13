package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.RolePermission;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RolePermissionMapper {
    
    int deleteByPrimaryKey(@Param("roleId") Long roleId, @Param("permissionId") Long permissionId);

    int insert(RolePermission record);

    List<RolePermission> selectAll();
}