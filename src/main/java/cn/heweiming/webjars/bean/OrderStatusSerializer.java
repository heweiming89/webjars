package cn.heweiming.webjars.bean;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import cn.heweiming.webjars.enumeration.OrderStatus;

public class OrderStatusSerializer extends JsonSerializer<OrderStatus> {

    @Override
    public void serialize(OrderStatus value, JsonGenerator gen,
            SerializerProvider serializers) throws IOException, JsonProcessingException {
        // TODO Auto-generated method stub
        gen.writeStartObject();
        gen.writeFieldName("code");
        gen.writeString(value.getCode());
        gen.writeFieldName("description");
        gen.writeString(value.getDescription());
        gen.writeEndObject();
    }

}
