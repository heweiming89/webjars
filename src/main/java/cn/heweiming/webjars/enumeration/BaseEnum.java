package cn.heweiming.webjars.enumeration;

public interface BaseEnum<T> {
    
    public String getCode();

    public String getValue();
    
    public T getEnumByCode(String code);
       
}
