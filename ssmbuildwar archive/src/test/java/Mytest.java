import com.zsj.Utils.MD5;
import com.zsj.pojo.Books;
import com.zsj.pojo.Student;
import com.zsj.pojo.Teacher;
import com.zsj.service.BookService;
import com.zsj.service.LoginService;
import com.zsj.service.StudentService;
import com.zsj.service.TeacherService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Mytest {
    @Test
    public void test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService service = (TeacherService) context.getBean("TeacherServiceImpl");
        Teacher teacher = new Teacher(9,"陈美丽","4","5","6","7","8","9");
        service.update(teacher);



    }
    @Test
    public void testmd5(){
        String pwd =  MD5.getMd5("123456");
        System.out.println(pwd);
    }
}
