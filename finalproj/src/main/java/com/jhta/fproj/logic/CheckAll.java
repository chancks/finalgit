package com.jhta.fproj.logic;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.BsVO;
import com.jhta.fproj.model.Jun_VO;

public class CheckAll {
	
	
	@Resource
	SqlSessionTemplate sessionTemplate;
	
	//학생시간표체크
	public boolean chktime(ArrayList<BsVO> arr,ArrayList<BsVO> arr2) {//arr-선택한거 arr2-전체 리스트
		boolean chk = false;
		for (BsVO vo : arr2) {
			for(BsVO vo2 : arr) {
				if(vo.getCday().equals(vo2.getCday())) {//선택한것과 내 수강친청 목록에서 날짜가 겹치는것 체크
					for(Integer ii : vo.getTimearr()) {
						for(Integer ii2 : vo2.getTimearr()) {
							if(ii==ii2)//날짜가 겹치고 시간이 겹치는지 체크
								chk = true;
						}
					}
				}
			}
		}
		return chk;
	}
	
	//과목등록 시간표 체크
	public boolean chktime2(ArrayList<Jun_VO> arr,ArrayList<Jun_VO> arr2) {//arr-선택한거 arr2-전체 리스트
		boolean chk = false;
		
		for (Jun_VO vo : arr2) {
			for(Jun_VO vo2 : arr) {
				if(vo.getCday().equals(vo2.getCday())) {//선택한것과 내 수강친청 목록에서 날짜가 겹치는것 체크
					for(Integer ii : vo.getTimearr()) {
						for(Integer ii2 : vo2.getTimearr()) {
							if(ii==ii2)//날짜가 겹치고 시간이 겹치는지 체크
								chk = true;
						}
					}
				}
			}
		}
		
		return chk;
	}
	
	//ctime 정규식 체크
	public boolean chkstr(ArrayList<Jun_VO> arr) {
		
		boolean chk = false;
		String [] str = arr.get(0).getCtime().split(",");
		
		for (int i = 0; i< str.length;i++) {
			if(Integer.parseInt(str[i])>8)
				chk = true;
		}
		
		return chk;
	}
	
	//과목 상세 생성
	public Jun_VO cinfo(ArrayList<Jun_VO> arr){
		ArrayList<Jun_VO> arr2 = new ArrayList<Jun_VO>();
		Jun_VO vo = new Jun_VO();
		String str = null;
		System.out.println("arr.size():"+arr.size());
		if(arr.size()>1) {
			for(int i = 1; i < arr.size(); i++) {
				if(arr.get(i).getCcode().equals(arr.get(i-1).getCcode())) {
					str = arr.get(i).getCday()+arr.get(i).getCtime()+"/"
							+arr.get(i-1).getCday()+arr.get(i-1).getCtime();
					
				}
				vo = arr.get(i);
				System.out.println(i+","+str);
				vo.setCinfo(str);
				
			}
			
			System.out.println("arr.size()>1:"+vo);
			
		}else {
            
            vo = arr.get(0);
            vo.setCinfo(arr.get(0).getCday()+arr.get(0).getCtime());
            System.out.println("arr.size()<1:"+vo);
        }
		
		return vo;
	}
	
	//과목 상세 리스트
	public ArrayList<BsVO> cinfolist(ArrayList<BsVO> arr){
		ArrayList<BsVO> arr2 = new ArrayList<BsVO>();
		BsVO vo = new BsVO();
		String str = null;
		int cnt = 0;
		
		
		if(arr.size()>1) {
			for(int i = 1; i < arr.size(); i++) {
				
				boolean chk = false;
				chk =arr.get(i).getCcode().equals(arr.get(i-1).getCcode());
				
				if(chk) {
					if(cnt==0) {
						str = arr.get(i-1).getCday()+arr.get(i-1).getCtime()+"/"
								+arr.get(i).getCday()+arr.get(i).getCtime();
					} else {
						str += "/"+arr.get(i).getCday()+arr.get(i).getCtime();
					}
					
					
					cnt++;
						
					if(i == arr.size()-1) {
						vo = arr.get(i-1);
						vo.setCinfo(str);
						arr2.add(vo);
					}
					
				} else {
					
					if(i == 1) {
						
						str = arr.get(i-1).getCday()+arr.get(i-1).getCtime();
						vo = arr.get(i-1);
						vo.setCinfo(str);
						arr2.add(vo);
						
					} else if(i == arr.size()-1) {
						
						if(!(arr.get(i-1).getCcode().equals(arr.get(i-2).getCcode()))) {
							str = arr.get(i-1).getCday()+arr.get(i-1).getCtime();
						}
						vo = arr.get(i-1);
						vo.setCinfo(str);
						arr2.add(vo);
						
						str = arr.get(i).getCday()+arr.get(i).getCtime();
						vo = arr.get(i);
						vo.setCinfo(str);
						arr2.add(vo);
						System.out.println(i+":"+vo);
						
					} else {
						
						vo = arr.get(i-1);
						if(cnt == 0) {
							str = arr.get(i-1).getCday()+arr.get(i-1).getCtime();
						}
						vo.setCinfo(str);
						arr2.add(vo);
						cnt = 0;
						
					}
					
				}
			}
				
		} else {
			arr.get(0).setCinfo(arr.get(0).getCday()+arr.get(0).getCtime());
			arr2 = arr;
		}
			
		return arr2;
	}
	
	///////////////////////////서준호 만듦
	
	//과목 코드 중복 체크
	public boolean chkccode(ArrayList<Jun_VO> arr,ArrayList<Jun_VO> arr3) {//arr-선택한거 arr2-전체 리스트
		boolean chk = false;
		System.out.println("chkccode@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@1111");
		for (Jun_VO vo : arr3) {

			System.out.println("-------------------------------------");
			for(Jun_VO vo3: arr) {
				

				System.out.println("chkccode@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@3333");
				System.out.println("vo         :   "+vo);
				System.out.println("vo3         :   "+vo3);


	
					if(!vo.getCid().equals(vo3.getCol())) {
								chk = true;
					}
					
				
			}
		}
		
		return chk;
	}
	
	
	public boolean chkcid(ArrayList<Jun_VO> arr,ArrayList<Jun_VO> arr2) {//arr-선택한거 arr2-전체 리스트
		
		System.out.println("checkID 진입@@!#@$@$*&!($&!@*(&!@(*#&!@#*(@&#*(");
		boolean chk = true;
		
		
		for (Jun_VO vo : arr2) {
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@1111111111");
			if(vo.getCid()==null || vo.getCid()=="") {
				chk = false;
			}
			System.out.println(vo.getCid());
			System.out.println("여기 왜안나오는데 1111222222222");
			for(Jun_VO vo2 : arr) {
				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@222222222222");

				System.out.println("vo2.getCid()        :"+vo2.getCol());
				System.out.println("vo2            :"+vo2);
				System.out.println("===========================");
				System.out.println("vo.getCid()        :"+vo.getCid());
				System.out.println("vo            :    "+vo);
				
				

				if(vo.getCid().equals(vo2.getCol())) {//선택한것과 내 수강친청 목록에서 코드 겹치는것 체크
					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@");
					
					System.out.println(vo.getCid());
					System.out.println(vo2.getCol());
					
					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@");
					
					if(vo.getCname().equals(vo2.getSchCol())) {
						System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmmmm");
						
						System.out.println(vo.getCname());
						System.out.println(vo2.getSchCol());
						chk = false;
						System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmmmm");
					}
					
				}
			}
		}
		
		return chk;
	}
	
}