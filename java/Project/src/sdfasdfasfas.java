import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class sdfasdfasfas {
    public static void main(String[] args) {

        String[] hopefield = {"프론트엔드개발자", "백엔드개발자", "풀스택개발자", "미들티어개발자", "웹개발자", "데스크톱개발자", "모바일개발자", "그래픽개발자", "게임개발자", "빅데이터개발자"};

        String[] salary = {"2800", "300", "3500", "4000", "4500", "5000", "5500", "6000", "6500", "7000"};


        try {
            //String directoryPath ="/Users/oseunghyeon/Documents";
            BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tbl.csv"));

            for (int i = 1; i <= 504; i++) {

                int a = 0;
                a=i;

                Random random = new Random();
                String hopefield1 = hopefield[random.nextInt(hopefield.length)];

                String salary1 = salary[random.nextInt(salary.length)];

                int b =0;
                b=i;

                writer.write(String.format("%d,%s,%s,%d\r\n",a,hopefield1,salary1,b));
                
            }
            writer.close();
        }
        catch (IOException e){}


    }//main
}//class
