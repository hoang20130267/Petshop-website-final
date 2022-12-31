package vn.edu.hcmuaf.fit.FilesManipulation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.util.ArrayList;

@WebListener
public class FileLocationContextListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    public FileLocationContextListener() {
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String rootPath = System.getProperty("catalina.home");
        String realRootPath = rootPath.substring(0, rootPath.lastIndexOf("\\"));
        ServletContext ctx = sce.getServletContext();
        String productRelativePath = ctx.getInitParameter("tempproduct.dir");
        String realProductPath = ctx.getInitParameter("saveproduct.dir");
        String avatarUserRelativePath = ctx.getInitParameter("tempavataruser.dir");
        String realAvatarUserPath = ctx.getInitParameter("saveavataruser.dir");
        File tempproduct = new File(rootPath + File.separator + "webapps" + File.separator + productRelativePath);
        File saveproduct = new File(realRootPath + File.separator + realProductPath);
        File tempavataruser = new File(rootPath + File.separator + "webapps" + File.separator + avatarUserRelativePath);
        File saveavataruser = new File(realRootPath + File.separator + realAvatarUserPath);
        if (!tempproduct.exists())
            tempproduct.mkdirs();
        if (!saveproduct.exists())
            saveproduct.mkdirs();
        if (!tempavataruser.exists())
            tempavataruser.mkdirs();
        if (!saveavataruser.exists())
            saveavataruser.mkdirs();
        ctx.setAttribute("FILES_DIR_TEMPPRODUT", tempproduct);
        ctx.setAttribute("FILES_DIR_FILEPRODUCT", saveproduct);
        ctx.setAttribute("FILES_DIR_TEMPAVATARUSER", tempavataruser);
        ctx.setAttribute("FILES_DIR_FILEAVATARUSER", saveavataruser);
        ctx.setAttribute("TEMPPRODUCT_DIR", rootPath + File.separator + "webapps" + File.separator + productRelativePath);
        ctx.setAttribute("FILEPRODUCT_DIR", realRootPath + File.separator + realProductPath);
        ctx.setAttribute("TEMPAVATARUSER_DIR", rootPath + File.separator + "webapps" + File.separator + avatarUserRelativePath);
        ctx.setAttribute("FILEAVATARUSER_DIR", realRootPath + File.separator + realAvatarUserPath);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /* This method is called when the servlet Context is undeployed or Application Server shuts down. */
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        /* Session is destroyed. */
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is added to a session. */
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is removed from a session. */
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is replaced in a session. */
    }
}
