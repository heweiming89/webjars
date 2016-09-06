package cn.heweiming.webjars.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cn.heweiming.webjars.bean.Person;
import cn.heweiming.webjars.dto.DataTablesReqDto;
import cn.heweiming.webjars.dto.DataTablesRespDto;

/**
 * Servlet implementation class DatatablesServlet
 */
@RestController
@RequestMapping("/datatables")
public class DatatablesController {

    private static List<String[]> data;

    public DatatablesController() {
        System.err.println("DatatablesController.DatatablesController()");
    }

    static {
        int total = 127;
        data = new ArrayList<>();
        for (int i = 0; i < total; i++) {
            String[] row = new String[7];
            for (int j = 0; j < 7; j++) {
                row[j] = String.format("测试row %1$s data %2$s", i + 1, j + 1);
            }
            data.add(row);
        }
    }

    @RequestMapping(value = "/server/array")
    @ResponseBody
    public DataTablesRespDto serverArray(DataTablesReqDto reqDto) {
        DataTablesRespDto dto = new DataTablesRespDto();
        int total = data.size();
        int start = reqDto.getStart();
        int length = reqDto.getLength();
        dto.setDraw(reqDto.getDraw());
        dto.setRecordsTotal(total);
        dto.setRecordsFiltered(total);
        dto.setData(
                data.subList(start, (start + length) <= total ? start + length : total));
        return dto;
    }

    @RequestMapping(value = "/server/object")
    @ResponseBody
    public DataTablesRespDto serverObject(DataTablesReqDto reqDto) {
        DataTablesRespDto respDto = new DataTablesRespDto();
        respDto.setDraw(reqDto.getDraw());
        respDto.setRecordsTotal(reqDto.getLength() * 13);
        respDto.setRecordsFiltered(reqDto.getLength() * 13);
        // respDto.setError(String.format("error 测试 %1$tF %1$tT", new Date()));
        List<Person> data = new ArrayList<>();
        for (int i = reqDto.getStart() + 1;; i++) {
            if (i - reqDto.getStart() >= 10) {
                break;
            }
            Person person = new Person();
            person.setAge(i);
            person.setBirthday(new Date());
            person.setGender("性别" + i);
            person.setName("姓名" + i);
            person.setNation("民族" + i);
            person.setWeight(i);
            person.setMobilePhone("手机号码" + i);
            data.add(person);
        }
        respDto.setData(data);
        return respDto;
    }

    @RequestMapping(value = "/client/array")
    public DataTablesRespDto clientArray(DataTablesReqDto reqDto) {
        DataTablesRespDto dto = new DataTablesRespDto();
        int total = data.size();
        dto.setDraw(reqDto.getDraw());
        dto.setRecordsTotal(total);
        dto.setRecordsFiltered(total);
        dto.setData(data);
        return dto;
    }

    @RequestMapping(value = "/client/object")
    public DataTablesRespDto clientObject(DataTablesReqDto reqDto) {
        DataTablesRespDto respDto = new DataTablesRespDto();
        List<Person> data = new ArrayList<>();
        for (int i = 1; i <= 127; i++) {
            Person person = new Person();
            person.setAge(i);
            person.setBirthday(new Date());
            person.setGender("性别" + i);
            person.setName("姓名" + i);
            person.setNation("民族" + i);
            person.setWeight(i);
            person.setMobilePhone("手机号码" + i);
            data.add(person);
        }
        respDto.setData(data);
        return respDto;
    }

}
