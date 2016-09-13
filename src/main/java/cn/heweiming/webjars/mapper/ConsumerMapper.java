package cn.heweiming.webjars.mapper;

import cn.heweiming.webjars.model.Consumer;
import java.util.List;

public interface ConsumerMapper {
    
    int deleteByPrimaryKey(Integer id);

    int insert(Consumer record);

    Consumer selectByPrimaryKey(Integer id);

    List<Consumer> selectAll();

    int updateByPrimaryKey(Consumer record);
}