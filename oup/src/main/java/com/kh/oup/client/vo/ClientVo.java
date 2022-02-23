package com.kh.oup.client.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ClientVo {
	private int cNo;		// �ŷ�ó ��ȣ
	private String cName;	// ��ȣ�̸�
	private int bNo;		// ����ڵ�Ϲ�ȣ
	private int bNo2;		// ��������ȣ
	private String cType;	// ����
	private String cOwner;	// ��ǥ�ڸ�
	private String cAddr;	// �ּ�
	private String cPhone;	// ��ȭ��ȣ
	private String cFax;	// Fax
	private String cEmail;	// email
	private int cUmony;		// �̼���
	private int cCreditLimit;	// �����ѵ�
	private int cCreditDateMonth;	// ���ű��� (��)
	private int cCreditDateDay;		// ���ű��� (��)
	private Date cDate;				// ������¥
	private String cDeleteYn;		// ��������
}
