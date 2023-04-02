package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import vn.edu.hcmuaf.fit.beans.*;
import vn.edu.hcmuaf.fit.services.SignUpService;
import vn.edu.hcmuaf.fit.services.UserService;
import vn.edu.hcmuaf.fit.services.Utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "LoginGoogleHandler", value = "/LoginGoogleHandler")
public class LoginGoogleHandler extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        UserGoogle user = getUserInfo(accessToken);
        System.out.println(user);
    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build()).execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static UserGoogle getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        UserGoogle googlePojo = new Gson().fromJson(response, UserGoogle.class);
        System.out.println(googlePojo);
        return googlePojo;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            response.sendRedirect("login.jsp");
        } else {
            String accessToken = getToken(code);
            UserGoogle userGoogle = getUserInfo(accessToken);
       /*     System.out.println(userGoogle);*/
            UserAccount user = UserService.getInstance().getUserByEmail(userGoogle.getEmail());
            if (user != null) {
                request.getSession().setAttribute("user", user);
                request.getSession().setAttribute("cart", new Cart());
                request.getSession().setAttribute("wishlist", new Wishlist());
            } else {
                SignUpService.getInstance().insertUser(userGoogle.getName(), Utils.maHoaMK(userGoogle.getId()), userGoogle.getId(), userGoogle.getName(), userGoogle.getEmail(), null);
                String id = UserService.getInstance().getIdUserByName(userGoogle.getEmail());
                UserService.getInstance().updateInforUser(id, userGoogle.getName(), null, null,userGoogle.getId(),null);
                user = UserService.getInstance().getUserByEmail(userGoogle.getEmail());
                request.getSession().setAttribute("user", user);
                request.getSession().setAttribute("cart", new Cart());
                request.getSession().setAttribute("wishlist", new Wishlist());
                System.out.println(user);
            }
            response.sendRedirect("index.jsp");
        }
    }
}

