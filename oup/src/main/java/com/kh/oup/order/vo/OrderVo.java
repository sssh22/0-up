package com.kh.oup.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVo {
	private int oNo;			// �ֹ�����ȣ
	private int cNo;			// �ŷ�ó��ȣ
	private int projectNo;		// ������Ʈ��ȣ
	private int warehouseNo;	// â���ȣ
	private Date oDate;			// �ֹ���
	private Date creditDate; 	// ���ű���
	private String teamCode;	// ���ڵ�
	private int employeeNo;		// �����
	private String vatYn;		// �ΰ��� ����
	private String oStatement;
	
	private int pNo;		// ǰ�� ��ȣ �˻���
	private String oDateStr;	
	private String creditDateStr; 
	private int startRow;
	private int endRow;
}
