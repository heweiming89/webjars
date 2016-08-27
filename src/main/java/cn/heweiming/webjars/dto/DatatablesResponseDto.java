package cn.heweiming.webjars.dto;

public class DatatablesResponseDto {

    private Integer draw;
    private Integer recordsTotal;
    private Integer recordsFiltered;
    private Object data;

    public Object getData() {
        return data;
    }

    public Integer getDraw() {
        return draw;
    }

    public Integer getRecordsFiltered() {
        return recordsFiltered;
    }

    public Integer getRecordsTotal() {
        return recordsTotal;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public void setDraw(Integer draw) {
        this.draw = draw;
    }

    public void setRecordsFiltered(Integer recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public void setRecordsTotal(Integer recordsTotal) {
        this.recordsTotal = recordsTotal;
    }


}
