package com.test.toy.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import com.test.toy.DBUtil;

public class Dummy {
	public static void main(String[] args) {
		try {
			
			Connection conn = null;
			PreparedStatement pstat = null;
			
			conn = DBUtil.open();

			
			String sql = "insert into tblBoard (seq, subject, content, regdate, readcount, id) values (seqBoard.nextVal, ?, '내용', default, default, 'hong')";
			
			String temp = "개와 더불어 인간의 가장 오래된 반려동물로 사랑받아온 고양이. 그러나 고양이는 의외로 과학적인 연구로도 밝혀진 것이 많지않은 수수께끼 같은 동물이다. 최근 미국 라이온칼리지 연구팀은 고양이가 의사소통을 위해 수백 가지 표정을 지을 수 있다는 흥미로운 연구결과를 실험심리학 저널 `행동 과정‘(Behavioral Processes) 최신호에 발표했다. 이번 연구는 LA의 한 고양이 카페에 사는 고양이 50마리의 독특한 얼굴 표정을 분석한 것으로, 연구팀은 고양이가 총 276가지의 표정을 지을 수 있는 것으로 결론지었다. 이에비해 인간의 얼굴 표정은 44가지, 개는 27가지, 침팬지는 무려 357가지에 달해 고양이가 의외로 의사소통을 위해 풍부한 감정을 표현할 수 있는 셈이다. 특히 이같은 결론은 고양이에 대해 가지고 있던 선입견을 깨는 것에 한 몫 한다. 일반적으로 고양이가 고독한 성향이기 때문에 사회적 관계가 떨어질 것으로 생각하기 때문이다. 눈문에 따르면 고양이는 벌어진 입술, 확장되거나 수축된 동공, 눈 깜빡임, 입가의 말림, 코 핥기, 다양한 귀 위치를 포함해 대략 26가지 독특한 얼굴 움직임 중 이를 조합해 총 276개의 표정을 만들어낼 수 있다. 또한 고양이는 공격적인 표정(37%)보다 우호적인 표정(45%)이 더 많은 것으로 드러났으며 18%는 모호하거나 두 범주 모두에 속했다. 논문의 공동저자인 브리트니 플로키위츠 교수는 '이번 연구는 고양이가 가르랑거리거나 야옹하는 것 이상으로 의사소통하는 방식을 심층적으로 조사한 최초의 연구 중 하나'라며 의미를 부여했다. 특히 교수는 '고양이가 음식을 먹기위해 인간 주위에 모이면서 친근한 표정을 짓기 시작했을 것'이라면서 '고양이는 인간과의 유대감을 강화할 수 있는 잠재력을 가지고 있다'고 덧붙였다.";
			String[] templist = temp.split(" ");
			
			Random rnd = new Random();
			
			pstat = conn.prepareStatement(sql);
			for (int i=0; i<250; i++) {
				String subject = "";
				
				for (int j=0; j<5; j++) {
					subject += templist[rnd.nextInt(templist.length)] + " ";
				}
				pstat.setString(1, subject);
				pstat.executeUpdate();
				System.out.println(i);
			}
			
			pstat.close();
			conn.close();
					
		} catch (Exception e) {
			System.out.println("Dummy.main()");
			e.printStackTrace();
		}
	}
}
