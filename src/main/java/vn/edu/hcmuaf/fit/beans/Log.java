package vn.edu.hcmuaf.fit.beans;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Log {
    private static final Logger Log = LogManager.getLogger(Log.class);

    //Log thông báo
    public static void info (String message) {
        Log.info(message);
    }
    //Log cảnh báo
    public static void warn (String message) {
        Log.warn(message);
    }
    //Log lỗi
    public static void error (String message) {
        Log.error(message);
    }
    //Log fantal level
    public static void fatal (String message) {
        Log.fatal(message);
    }
    //Log gỡ lỗi
    public static void debug (String message) {
        Log.debug(message);
    }
}
