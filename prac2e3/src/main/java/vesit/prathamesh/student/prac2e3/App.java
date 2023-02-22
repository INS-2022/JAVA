package vesit.prathamesh.student.prac2e3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        Car c1 = (Car) context.getBean("carBean");
        System.out.println(c1.toString());
    }
}
