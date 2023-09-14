import java.io.BufferedWriter;
import java.time.LocalDate;
import java.util.Random;
import java.io.FileWriter;
import java.io.IOException;


public class okkiki {

    public static void main(String[] args) {
//tblWorkExperience

//workspace
            String[] workspace = {"케이티", "엘지유플러스", "삼성에스디에스", "다우데이타", "다우기술",
                    "엘지씨엔에스", "대림", "에스케이브로드밴드", "아이티센", "한화시스템", "현대오토에버", "에스케이쉴더스", "웅진", "효성티앤에스㈜", "롯데정보통신㈜", "메가존", "포스코ICT", "한전KDN", "케이티디에스"
            };
//workTask
            String[] workTask = {"PM", "PL", "리드개발", "기획", "퍼블리싱", "인사", "총무", "회계", "기획"};

// 2017 ~ 2022 1월 까지의 경력사항
            //2017-01-01 ~ 2022-01-01

try {
    BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tbltttttt.csv"));
    //FileWriter writer = new FileWriter("./tblWorkExperience.txt");


    for (int i = 1; i <= 300; i++) {

        int workExperience_seq = 0;
        workExperience_seq = i;

        LocalDate startDate = LocalDate.of(2017, 1, 1);
        LocalDate endDate = LocalDate.of(2020, 1, 1);

        long startEpochDay = startDate.toEpochDay();
        long endEpochDay = endDate.toEpochDay();

        Random random = new Random();
        long randomEpochDay = startEpochDay + random.nextInt((int) (endEpochDay - startEpochDay));

        LocalDate randomDate = LocalDate.ofEpochDay(randomEpochDay);

        
        //---------------------------------------------------------------


        String workSpace1 = workspace[random.nextInt(workspace.length)];

        String workTask1 = workTask[random.nextInt(workTask.length)];

        writer.write(String.format("%d,%s,%tF,%s,%s\r\n",workExperience_seq,workSpace1,randomDate,randomDate.plusDays(700),workTask1));

    }
    writer.close();
    System.out.println("파일 생성 완료");

    }
            catch(IOException e){
                System.out.println("예외");
    }


    }//main
        }//class
