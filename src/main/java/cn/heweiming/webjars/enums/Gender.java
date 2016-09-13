package cn.heweiming.webjars.enums;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import cn.heweiming.webjars.bean.EnumerationSerializer;

/**
 * @author heweiming 2016年9月12日 上午11:37:39
 */
@JsonSerialize(using = EnumerationSerializer.class)
public enum Gender implements BaseEnum<Gender> {

    /** 男 */
    MALE("1", "男"),
    /** 女 */
    FEMALE("0", "女"),
    /** 男转女 */
    MALE_TO_FEMALE("10", "男转女"),
    /** 女转男 */
    FEMALE_TO_MALE("01", "女转男"),
    /** 未知 */
    UNKNOWN("00", "未知");

    private final String code;

    private final String value;

    private Gender(String code, String value) {
        this.code = code;
        this.value = value;
    }

    @Override
    public String getCode() {
        return code;
    }

    @Override
    public Gender getEnumByCode(String code) {
        if (code == null || code.trim().isEmpty()) {
            return null;
        }
        Gender[] genders = Gender.values();
        for (Gender gender : genders) {
            if (code.equals(gender.getCode())) {
                return gender;
            }
        }
        return null;
    }

    @Override
    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "Gender [code=" + code + ", value=" + value + "]";
    }

}
