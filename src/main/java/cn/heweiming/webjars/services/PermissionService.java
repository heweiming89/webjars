package cn.heweiming.webjars.services;

import cn.heweiming.webjars.model.Permission;

public interface PermissionService {

    public Permission createPermission(Permission permission);
    
    public void deletePermission(Long permissionId);
}
