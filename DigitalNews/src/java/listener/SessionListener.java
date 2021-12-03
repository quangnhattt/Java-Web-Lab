package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author Nam Ngoc
 */
public class SessionListener implements HttpSessionListener {

    /**
     * @param se
     */
    @Override
    public void sessionCreated(HttpSessionEvent se) {

    }

    /**
     * @param se
     */
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
    }
}
