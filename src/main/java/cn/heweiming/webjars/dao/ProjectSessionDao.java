package cn.heweiming.webjars.dao;

import java.io.Serializable;
import java.util.Collection;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.SessionDAO;

public class ProjectSessionDao implements SessionDAO {

    @Override
    public Serializable create(Session session) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Session readSession(Serializable sessionId) throws UnknownSessionException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void update(Session session) throws UnknownSessionException {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void delete(Session session) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public Collection<Session> getActiveSessions() {
        // TODO Auto-generated method stub
        return null;
    }

}
