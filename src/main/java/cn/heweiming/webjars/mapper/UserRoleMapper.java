package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.UserRole;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserRoleMapper {
    
    int deleteByPrimaryKey(@Param("userId") Long userId, @Param("roleId") Long roleId);

    int insert(UserRole record);

    List<UserRole> selectAll();
}