package cn.heweiming.webjars.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class DatatablesServlet
 */
@WebServlet("/datatables")
public class DatatablesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static List<String[]> data;

    static {
        int total = 127;
        data = new ArrayList<>();
        for (int i = 0; i < total; i++) {
            String[] row = new String[7];
            for (int j = 0; j < 7; j++) {
                row[j] = String.format("row %1$s data %2$s", i + 1, j + 1);
            }
            data.add(row);
        }
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("DatatablesServlet.doGet()");
        response.setContentType("application/json");
        Map<String, List<String[]>> reslut = new HashMap<>();

        reslut.put("data", data);
        ObjectMapper mapper = new ObjectMapper();
        String jsonData = mapper.writeValueAsString(reslut);
        PrintWriter writer = response.getWriter();
        writer.write(jsonData);
        writer.flush();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("DatatablesServlet.doPost()");
        response.setContentType("application/json");
        String draw = request.getParameter("draw");
        String startStr = request.getParameter("start");
        int start = (startStr == null || ("").equals(startStr)) ? 0
                : Integer.valueOf(startStr);
        String lengthStr = request.getParameter("length");
        int length = (lengthStr == null || ("").equals(lengthStr)) ? 10
                : Integer.valueOf(lengthStr);
        System.out.println("draw  ==>  " + draw);
        System.out.println("length  ==>  " + length);
        System.out.println("start  ==>  " + start);

        // Enumeration<String> paramNames = request.getParameterNames();
        // while (paramNames.hasMoreElements()) {
        // String name = paramNames.nextElement();
        // String[] paramValues = request.getParameterValues(name);
        // System.out.println(name + "\t" + Arrays.toString(paramValues));
        // }
        Map<String, Object> result = new HashMap<>();
        int total = data.size();
        result.put("data",
                data.subList(start, (start + length) <= total ? start + length : total));
        result.put("recordsTotal", total);
        result.put("recordsFiltered", total);
        result.put("draw", draw);
        // Display index of the first record on the current page
        // result.put("_START_",12);
        // Display index of the last record on the current page
        // result.put("_END_", 27);
        // Number of records in the table after filtering
        // result.put("_TOTAL_", 72);
        // Number of records in the table without filtering
        // result.put("_MAX_", 27);
        // Current page number
        // result.put("_PAGE_", 2);
        // Total number of pages of data in the table
        // result.put("_PAGES_", 7);
        ObjectMapper mapper = new ObjectMapper();
        String jsonData = mapper.writeValueAsString(result);
        PrintWriter writer = response.getWriter();
        writer.write(jsonData);
        writer.flush();
        // doGet(request, response);
    }

}
