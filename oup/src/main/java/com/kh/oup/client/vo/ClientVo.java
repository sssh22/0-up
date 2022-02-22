package com.kh.oup.client.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ClientVo {
	int cNo;		// �ŷ�ó ��ȣ
	String cName;	// ��ȣ�̸�
	int bNo;		// ����ڵ�Ϲ�ȣ
	int bNo2;		// ��������ȣ
	String cType;	// ����
	String cOwner;	// ��ǥ�ڸ�
	String cAddr;	// �ּ�
	String cPhone;	// ��ȭ��ȣ
	String cFax;	// Fax
	String cEmail;	// email
	int cPic;		// �ŷ�ó �߰��ϴ� ����
	int cUmony;		// �̼���
	int cCreditLimit;	// �����ѵ�
	int cCreditDateMonth;	// ���ű��� (��)
	int cCreditDateDay;		// ���ű��� (��)
	Date cDate;				// ������¥
	String cDeleteYn;		// ��������
}
