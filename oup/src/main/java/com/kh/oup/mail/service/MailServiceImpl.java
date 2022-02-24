package com.kh.oup.mail.service;

import java.io.File;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.oup.common.PageVo;
import com.kh.oup.mail.dao.MailDao;
import com.kh.oup.mail.vo.MailVo;

@Service
public class MailServiceImpl implements MailService{

	@Autowired
	private MailDao dao;
	
	@Override
	public int send(MailVo vo, HttpServletRequest req, String rId, String sId) throws Exception {
		
		Random random = new Random();
		
		//硫붿씪踰덊샇 nextval
		int no = dao.getMailSeq();
		
		int recipientNo = dao.getrecipientNo(rId);
		int senderNo = dao.getsenderNo(sId);
		
		vo.setRecipient(recipientNo);
		vo.setSender(senderNo);
		
		//insert 泥섎━
		vo.setMailNo(no);
		
		int result = dao.insertMail(vo);
		
		List<MultipartFile> fArr = vo.getAttachment();
		
		if(!fArr.isEmpty()) {
			System.out.println("泥⑤��뙆�씪 �엳�쓬");
			String path = req.getServletContext().getRealPath("/resources/dist/img/mail/");
			
			int index = 0;
			for(MultipartFile mf : fArr) {
				String changeName = System.currentTimeMillis() + "_" + random.nextInt() + "_" + mf.getOriginalFilename();
				index++;
				
				if(index == 1) {
					vo.setChangeName1(changeName);
				} else if(index == 2) {
					vo.setChangeName2(changeName);
				} else if(index == 3) {
					vo.setChangeName3(changeName);
				}
				
				File file = new File(path + changeName);
				mf.transferTo(file);
			}
			
			int result2 = dao.insertMailFile(vo);
		}
		
		return result;
	}

	@Override
	public int getMailCnt() throws Exception {
		return dao.selectMailCnt();
	}

	@Override
	public List<MailVo> getMailList(PageVo vo) throws Exception {
		return dao.selectMailList(vo);
	}

}
