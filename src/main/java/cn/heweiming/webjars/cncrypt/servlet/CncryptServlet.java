package cn.heweiming.webjars.cncrypt.servlet;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.heweiming.webjars.cncrypt.util.RSATool;

/**
 * Servlet implementation class CncryptServlet
 */
@WebServlet("/encrypt")
public class CncryptServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CncryptServlet() {
        
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String password = request.getParameter("password");
        String plaintext = null;
        try {
            plaintext = RSATool.decrypt(password);
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
        }
        System.out.println(plaintext);
        // Base64.decode(password);
        // String privateKey =
        // "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANKsu9NEDoL6mWKmVGSyZAw2ZecjnK3bMgQgrDNqbUZ91GaT5cKGIpx8MjFowGTFroo+RqM4QgarsA7/sLOXMOVIYKb/aiiDuOD1SgNmzZuGAVXlSLx6zYwE9in27HzArPuFr3XLHGied3pNoYRcgRLcGNIKoVM97lAX9MYthm/xAgMBAAECgYEApYQiOPRyNkNueMvW6BojcljWrMcU1J6u6AFHaUnHOqenVUQDMlYyISGOSbVT2phY7bHJy3hqn1UKCG6oRCCXv05V/9alEs2zr2J62NpTa+GoaDl66empSliUeN8J3Y9xiutCY/8QyMnCKOgODUobx2mXWDXA3zDwDm1bNXQt7kECQQDzKwhwRn+zzksSZ+mucwayygJUvE8Sqa98MDyQjL0227XQG+CTl1cvv46OXvb6hX8iNbfZGDS9+6NC9v24TvYZAkEA3cq/KrdxaTf1VOnUhlwSZ+P2an4fBDK8ygLFitWjx0uBaxIMOlM3GODToI74HpUzynCdUqX3cjljn4epJc2TmQJAGwe8j2Z2yZDz7V7ZrgehRfyIl8y66XMtS5u9D8BlRBTWOATxSNa43VjoytCpmZ1/TVk1T4+ORVQUiNwVxggY+QJBAM1jfdh+/GVlzqkNySOLi/ftYTqJBQwMOEwSeQDyirJ6N6UBl5VDjphZS2E6RId9v/JOi0IIM7fxcVJAfOFnGLECQESyCKq2ItV60UlV8oIqFDhzjBHmYn8tFHi7fq01C+8ydBnD11cCYL7d98pEUd1UBnQ7sxl+G1MHkk1XXu2Rxdw=";
        // byte[] plaintext = null;
        // try {
        // plaintext = RSAUtils.decryptByPrivateKey(Base64.decode(password),
        // privateKey);
        // } catch (Exception e) {
        // e.printStackTrace();
        // }
        // System.out.println(password);
        // System.out.println(new String(plaintext));

        doGet(request, response);
    }

}
