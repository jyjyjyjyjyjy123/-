package com.test.java.data;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class Dummy {
	public static void main(String[] args) throws IOException {
		//학생 데이터 생성
		//- 학년 > 3학년
		//- 반 > 5학급
		//- 번호 > 10명
		int n = 1;//일렬번호
		String[] name1 = {"김","이","박","최","정"};
		String[] name2 = {"길","동","재","석","명","수","진","현"};
		Random rnd = new Random();
		BufferedWriter wirter = new BufferedWriter(new FileWriter("data\\student.txt"));
		for (int i = 1; i <=3; i++) {
			for (int j = 1; j <=5; j++) {
				for (int k = 1; k <=10; k++) {
					//일렬번호, 학생명(랜덤), 학년, 반, 번호
					String name = name1[rnd.nextInt(name1.length)] +
							name2[rnd.nextInt(name2.length)] +
							name2[rnd.nextInt(name2.length)];
					String s = String.format("%d,%s,%d,%d,%d\n",n,name,i,j,k);
					n++;
					System.out.println(s);
					wirter.write(s);
				}
			}
		}
		wirter.close();
	}
}
