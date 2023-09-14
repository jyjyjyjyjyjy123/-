package test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

//강좌수 180개 + 60개
//출결 최소 20
//10 	8 	6 	4 	2 	0
//130 138 146 154 162 170
public class ttest {
	public static void main(String[] args) throws IOException {
		Random rnd = new Random();
		int count=1;
		int xcount = 1;
		int ccount = 1;
		int mcount = 0;
		int aaa = 10;
		int num1 = 1;
		int num2 = 10;
		int num3 = 1;
		int num4 = 30;
		int num11 = (rnd.nextInt(2)+2)*10;
		int num22 = 40;
		int num33 = 100 - (num1 + num2);
		int num123 = 1;
		int[] nums = {rnd.nextInt(30)+71,rnd.nextInt(30)+71};
		BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tblPoint.csv"));
		BufferedWriter writer2 = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tblAllScore.csv"));
		BufferedWriter writer3 = new BufferedWriter(new FileWriter("C:\\Users\\user\\Desktop\\데이터\\tblExamScore.csv"));
		for (int k = 1; k <= 18; k++) {
			for (int j = num1; j <= num2; j++) {
				for (int i = num3; i <= num4; i++) {
					nums[0] = rnd.nextInt(30)+71;
					nums[1] = rnd.nextInt(30)+71;
					for (int b = 0; b <= 1; b++) {
						writer3.write(String.format("%d,%d,%d,%d\n",ccount,b+num123,i,nums[b]));
						ccount++;
					}
					if (num2-mcount < j) {
						writer2.write(String.format("%d,%d,%d,%s,%s,%s\n",count,xcount,i,"null","null","null"));
						count++;
						continue;
					}
					int wjatn = rnd.nextInt(30)+71;
					writer2.write(String.format("%d,%d,%d,%d,%d,%d\n",count,xcount,i,100,nums[1],nums[0]));
					count++;
				}
				num123 += 2;
				if (num2-mcount < j) {
					writer.write(String.format("%d,%d,%s,%s,%s\n",xcount,j,"null","null","null"));
					xcount++;
					continue;
				}
				num11 = (rnd.nextInt(2)+2)*10;
				num22 = 40;
				num33 = 100 - (num11 + num22);
				writer.write(String.format("%d,%d,%d,%d,%d\n",xcount,j,num11,num22,num33));
				xcount++;
				
			}
			num1 += 10;
			num2 += 10;
			if(k%6==1||k%6==2) {
				num3 += 30;
				num4 = num3 + 29;
			}else if (k%6==3){
				num3 += 30;
				num4 = num3 + 25;
			}else if (k%6==4||k%6==5){
				num3 += 26;
				num4 = num3 + 25;
			}else {
				num3 += 26;
				num4 = num3 + 29;
			}
			if (k>=13) {
				mcount += 2;
			}
		}
		writer.close();
		writer2.close();
		writer3.close();
		System.out.println("끝");
		
	}
}
