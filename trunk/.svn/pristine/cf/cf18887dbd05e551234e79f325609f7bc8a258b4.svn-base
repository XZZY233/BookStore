import com.nuc.dao.OrderBookMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.NumberFormat;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 16:01
 */
public class testSQL {

    @Autowired
    OrderBookMapper orderBookMapper;

    public static void main(String[] args) throws IOException {

        /*Reader reader = null;
        reader = Resources.getResourceAsReader("myBatis-config.xml");
        if (reader == null) {
            System.out.println("reader null");
        } else {
            System.out.println(reader);
        }

        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        if (sessionFactory == null) {
            System.out.println("sessionFactory null");
        }else {
            System.out.println(sessionFactory);
        }
        SqlSession session = sessionFactory.openSession();

        if (session == null) {
            System.out.println("session null");
        } else {
            System.out.println(session);
        }*/

        //OrderBookMapper orderBookMapper = session.getMapper(OrderBookMapper.class);



    }
@Test
    public void test(){
    NumberFormat currency = NumberFormat.getCurrencyInstance();
        String number="100.00";
    BigDecimal bigDecimal=new BigDecimal(number);
    System.out.println(currency.format(bigDecimal));
    }
}
