package vn.edu.hcmuaf.fit.API;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class test {
    private String EMAIL ="20130266@st.hcmuaf.edu.vn";
    private String PASSWORD ="123456";

    public String getToken() throws IOException {
        URL url = new URL("http://140.238.54.136/api/auth/login");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setDoOutput(true);
        String jsonInputString =
                "    {"
                        + "      \"email\": \"" + EMAIL + "\","
                        + "      \"password\" : \"" + PASSWORD + "\""
                        + "    }";
        try (OutputStream os = con.getOutputStream()) {
            byte[] input = jsonInputString.getBytes(StandardCharsets.UTF_8);
            os.write(input, 0, input.length);
        }
        StringBuilder response = new StringBuilder();
        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), StandardCharsets.UTF_8))) {
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
        }
        JSONObject jsonResponse = new JSONObject(response.toString());
        String accessToken = jsonResponse.getString("access_token");
        return accessToken;
    }



    public static void main(String[] args) throws IOException {
        test t = new test();
        System.out.println(t.getToken());
    }
}
