package com.jhta.fproj.logic;

import com.jhta.fproj.model.PageVO;

public class Paging {
	
	

	public PageVO makePaging(Integer page,Integer total) {
		
		PageVO vo = new PageVO();
		
		if(page == null || page == 0) {
			page = 1;
			vo.setPage(1);
		}
		
		Integer limit = 4, pageLimit = 4;
		
		vo.setStart((page-1)*limit+1);
		vo.setEnd(page*limit);
		
		vo.setStartPage((page-1)/pageLimit*pageLimit+1);
		vo.setEndPage(vo.getStartPage()+pageLimit-1);
		
		vo.setTotalPage(total/limit);
		
		if(total%limit!=0)
			vo.setTotalPage(vo.getTotalPage()+1);
			
		if(vo.getEndPage()>vo.getTotalPage())
			vo.setTotalPage(vo.getEndPage());
		
		return vo;
	}
}
