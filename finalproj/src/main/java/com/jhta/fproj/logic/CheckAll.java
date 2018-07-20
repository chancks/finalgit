package com.jhta.fproj.logic;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.BsVO;
import com.jhta.fproj.model.Jun_VO;

public class CheckAll {
	
	//학생 시간표
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
	
	//강사시간표
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
}
