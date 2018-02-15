import org.apache.catalina.session.StandardManager;

public class MySessionManager extends StandardManager {

    @Override
    protected synchronized String generateSessionId() { 
    	String sessionId = Long.toHexString(Double.doubleToLongBits(Math.random()));;
        return sessionId;
    }
}