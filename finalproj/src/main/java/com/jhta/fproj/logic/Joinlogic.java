package com.jhta.fproj.logic;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.jhta.fproj.model.MngDAO;
import com.jhta.fproj.model.MngUserVO;

public class Joinlogic {

	MngDAO dao;
	
	public Joinlogic(MngDAO dao) {
		// TODO Auto-generated constructor stub
		this.dao = dao;
	}
	
/*============================================================*/	
	
	
	public String idchk(MngUserVO vo) {
		
		if(dao.chkid(vo)!=null) {
			
			return "아이디 중복";
		}
		
		return "true";
	}
	
	public boolean joinreg(MngUserVO vo) {
		
		boolean res = false;
	
		System.out.println(vo);

		
		System.out.println(dao.chkid(vo)!=null);
		
		if(dao.chkid(vo)==null) {
			
			System.out.println(vo.getAupfile());
			
			dao.userjoin(vo);
			res = true;
		}
		
		return res;
	}
	
	public String fileUP(MultipartFile up,HttpServletRequest request) {
        
        try {
            String filePath = 
                    "C:\\Users\\user\\Desktop\\final\\finalproj2\\src\\main\\webapp\\resources\\picture\\";
            
            /*filePath = request.getRealPath("resources/fff")+"/"+up.getOriginalFilename();*/
            
            /*filePath = request.getRealPath("resources/fff")+"/";*/
            
            String filename = up.getOriginalFilename();
            String fileDo = filename.substring(0,filename.lastIndexOf("."));
            String exp = filename.substring(filename.lastIndexOf("."));
            
            File ff = new File(filePath+filename);
            int cnt = 0;
            
            while(ff.exists()) {
                filename = fileDo+"_"+(cnt++)+exp;
                ff = new File(filePath+filename);
            }
     
            System.out.println(filePath+filename);
            FileOutputStream fos = new FileOutputStream(filePath+filename);
            
            fos.write(up.getBytes());
            
            fos.close();
            
            return filename;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }

	
	public void fdelete(MngUserVO vo, HttpServletRequest request) {
		
		if(!vo.getAupfile().equals("")) {
			String path = request.getRealPath("up")+"\\";
			path = "C:\\Users\\user\\Desktop\\final\\finalproj2\\src\\main\\webapp\\resources\\picture\\";
	
			new File(path+vo.getAupfile()).delete();
		}
	}
}
