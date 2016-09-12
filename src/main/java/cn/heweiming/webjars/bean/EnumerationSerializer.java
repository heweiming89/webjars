package cn.heweiming.webjars.bean;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

@SuppressWarnings("rawtypes")
public class EnumerationSerializer extends JsonSerializer<Enum> {

    @Override
    public void serialize(Enum value, JsonGenerator gen, SerializerProvider serializers)
            throws IOException, JsonProcessingException {
        gen.writeStartObject();
        Class<? extends Enum> clazz = value.getClass();
        Method[] methods = clazz.getMethods();
        for (Method method : methods) {
            Class<?> returnType = method.getReturnType();
            if (returnType == String.class && method.getName().startsWith("get")) {
                String methodName = method.getName();
                gen.writeFieldName(lowerCaseOfFirstLetter(methodName.substring(3)));
                try {
                    gen.writeString((String) method.invoke(value));
                } catch (IllegalAccessException | IllegalArgumentException
                        | InvocationTargetException e) {
                    throw new RuntimeException("执行失败");
                }
            }
        }
        gen.writeEndObject();
    }

    private String lowerCaseOfFirstLetter(String str) {
        if (str == null || str.length() < 1) {
            return "";
        }
        return str.substring(0, 1).toLowerCase() + str.substring(1);
    }

}
