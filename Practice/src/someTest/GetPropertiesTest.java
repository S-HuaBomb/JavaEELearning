package someTest;

import java.util.Properties;

public class GetPropertiesTest {
    public static void main(String[] args) {
        Properties properties = new Properties();
        try {
            String driver = properties.getProperty("driver");
            System.out.println(driver);
        } catch (Exception e) {
            System.out.println("not exist");
        }

    }
}
