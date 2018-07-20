package com.jhta.fproj.logic;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.BsVO;
import com.jhta.fproj.model.Jun_VO;

public class CheckAll {
	
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
			
			System.out.println(vo);
			
		}
		
		return vo;
	}
	
	//과목 상세 생성
	public ArrayList<BsVO> cinfolist(ArrayList<BsVO> arr){
		ArrayList<BsVO> arr2 = new ArrayList<BsVO>();
		BsVO vo = new BsVO();
		String str = null;
		int cnt = 1;
		
		if(arr.size()>1) {
			for(int i = 1; i < arr.size(); i++) {
				
				boolean chk = false;
				chk =arr.get(i).getCcode().equals(arr.get(i-1).getCcode());
				
				if(chk) {
					str = arr.get(i).getCday()+arr.get(i).getCtime()+"/"
							+arr.get(i-1).getCday()+arr.get(i-1).getCtime();
						
					cnt++;
					
					if(i == arr.size()-1) {
						cnt = 0;
					}
					
				} else {
					
					if(i == arr.size()-1) {
						str = arr.get(i).getCday()+arr.get(i).getCtime()+"/"
								+arr.get(i-1).getCday()+arr.get(i-1).getCtime();
						vo = arr.get(i-1);
						vo.setCinfo(str);
						arr2.add(vo);
						
						str = arr.get(i).getCday()+arr.get(i).getCtime();
						vo = arr.get(i);
						vo.setCinfo(str);
						arr2.add(vo);
						System.out.println(i+":"+vo);
						
					} else {
						
						cnt = 0;
						
					}
				}
				
				if(cnt == 0) {
					vo = arr.get(i-1);
					vo.setCinfo(str);
					arr2.add(vo);
					System.out.println(i+":"+vo);
				}
			}
				
		} else {
			arr2 = arr;
		}
			
		return arr2;
	}
}
