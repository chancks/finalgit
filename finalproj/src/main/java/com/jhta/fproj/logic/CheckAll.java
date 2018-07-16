package com.jhta.fproj.logic;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.jhta.fproj.model.BsDAO;
import com.jhta.fproj.model.BsVO;

public class CheckAll {
	
	public boolean chktime(ArrayList<BsVO> arr,ArrayList<BsVO> arr2) {//arr-선택한거 arr2-전체 리스트
		boolean chk = false;
		for (BsVO vo : arr2) {
			for(BsVO vo2 : arr) {
				if(vo.getCday() == vo2.getCday()) {//선택한것과 내 수강친청 목록에서 날짜가 겹치는것 체크
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
