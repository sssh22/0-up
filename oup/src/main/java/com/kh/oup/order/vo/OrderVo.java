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
	private int employeeNo;		// �ŷ�ó ��ǥ, �����
	private String vatYn;		// �ΰ��� ����
	
}
