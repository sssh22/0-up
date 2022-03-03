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
	private String owner;		// �ŷ�ó ��ǥ, �����
	private String vatYn;		// �ΰ��� ����
	private int dCCode;			// ���������ڵ�
	private int[] pNo;			// ǰ�� ��ȣ
	private String[] pName;		// ǰ�� �̸�
	private int[] oNum;			// ǰ�� ����
	private int[] oPrice;			// ǰ�� ����
	private Date[] oDeliberyDate;	// ��������
	private int orderRowNum;		// �ֹ��� ǰ�� row
}
