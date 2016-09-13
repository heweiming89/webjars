package cn.heweiming.webjars.services;

import cn.heweiming.webjars.model.Role;

public interface RoleService {

    public Role createRole(Role role);

    public void deleteRole(Long roleId);

    public void correlationPermissions(Long roleId, Long... permissions);

    public void uncorrelationPermissions(Long roleId, Long... permissions);

}
