package vesit.prathamesh.student.prac2e2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        Student s1 = (Student) context.getBean("studentBean");
        System.out.println(s1.toString());
    }
}
