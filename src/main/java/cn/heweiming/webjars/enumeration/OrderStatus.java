package cn.heweiming.webjars.enumeration;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import cn.heweiming.webjars.bean.OrderStatusSerializer;

@JsonSerialize(using = OrderStatusSerializer.class)
public enum OrderStatus {

    NEW("00", "新建"),

    WAIT_CONFIRM("01", "待审核"),

    CONFIMR_PASS("02", "审核通过"),

    CONFIMR_REJECTED("03", "审核退回"),

    INVALID("04", "销毁"),

    WAIT_PAY("11", "待支付"),

    PAY_SUCCESS("12", "支付成功"),

    PAY_FAIL("13", "支付失败"),

    TXN_SUCCESS("28", "交易成功"),

    TXN_FAIL("29", "交易取消");

    private final String code;
    private final String description;

    public static OrderStatus getByCode(String code) {
        if (StringUtils.isBlank(code)) {
            return null;
        }
        for (OrderStatus type : OrderStatus.values()) {
            if (type.getCode().equalsIgnoreCase(code)) {
                return type;
            }
        }

        return null;
    }

    private OrderStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    /**
     * @return the code
     */
    // @JsonValue
    public String getCode() {
        return code;
    }

    /**
     * @return the description
     */
    // @JsonValue
    public String getDescription() {
        return description;
    }

    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.cib.p2p.custody.enums.PersistEnum#returnEnum(java.lang.String)
     */
    public OrderStatus returnEnum(String persistedValue) {
        return getByCode(persistedValue);
    }

}
