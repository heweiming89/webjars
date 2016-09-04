package cn.heweiming.webjars.dto;

public class DataTablesRespDto {

    private int draw;
    private int recordsTotal;
    private int recordsFiltered;
    private Object data;
    private String error;
    
    public Object getData() {
        return data;
    }
    public int getDraw() {
        return draw;
    }
    
    public String getError() {
        return error;
    }
    public int getRecordsFiltered() {
        return recordsFiltered;
    }
    public int getRecordsTotal() {
        return recordsTotal;
    }
    public void setData(Object data) {
        this.data = data;
    }
    public void setDraw(int draw) {
        this.draw = draw;
    }
    public void setError(String error) {
        this.error = error;
    }
    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }
    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }
    
    

}
