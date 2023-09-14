

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class tasdfsdafsdf {
	public static void main(String[] args) throws IOException {
		Random rnd = new Random();
		BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tblExam.csv"));
		String[] ttt = {"실기","필기"};
		String[] text1 = {"블록체인","자바","오라클","JDBC","HTML","CSS","C","MongoDB","데이터구조","MySQL"};
		String[] text2 = {"Kotlin","자바","오라클","JDBC","HTML","CSS","네트워킹","클라우드","C99","Ruby"};
		String[] text3 = {"C++","자바","오라클","JDBC","HTML","CSS","SPRING","MYBatis","Python","빅데이터"};
		int count = 1;
		for (int i = 1; i <= 180; i++) {
			for (int j = 1; j<=2; j++) {
				if (i/6 >= 2 ) {
					writer.write(String.format("%d,%s,%s,%s,%s\n",count,ttt[j-1],text3[i%10],i,"임시"));
					count++;
				}else if (i/6 >= 1) {
					writer.write(String.format("%d,%s,%s,%s,%s\n",count,ttt[j-1],text2[i%10],i,"임시"));
					count++;
				}else {
					writer.write(String.format("%d,%s,%s,%s,%s\n",count,ttt[j-1],text1[i%10],i,"임시"));
					count++;
				}
			}
		}
		writer.close();
		System.out.println("끝");
		
	}
}
