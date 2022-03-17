package com.kh.oup.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderProductVo {
	private int orderNo;		// �ֹ��� ��ȣ
	private int[] orderList;
	private int[] pNo;			// ǰ�� ��ȣ
	private String[] pName;		// ǰ�� �̸�
	private int[] oNum;			// ǰ�� ����
	private int[] oPrice;			// ǰ�� ����
	private Date[] oDeliberyDate;	// ��������
	
	private int pIndex;				// �ֹ��� ǰ�� ������
	private String[] oDeliberyDateStr;
	
	private int orderListNo;
	private int pNoStr;
	private String pNameStr;
	private int oNumStr;
	private int oPriceStr;
	private Date oDeliberyDateStrr;
}
