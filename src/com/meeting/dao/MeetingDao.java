package com.meeting.dao;

import java.util.List;

import com.meeting.bean.MeetinginfoBean;

/**
 * 
 * @author ����
 * @���ܣ�ʵ�ֻ�����Ϣ��ع���
 */
public interface MeetingDao {
	/**
	 * 
	 * @���� ��ȡ���л�����Ϣ
	 * @return ������Ϣ����
	 * @throws Exception
	 */
	public List<MeetinginfoBean> fetchAllMeetingsinfoList() throws Exception;
	/**
	 * 
	 * @���� ��ȡδȡ������ȡ����ػ��鼯��
	 * @param ��ǰ����״̬
	 * @return ��ػ�����Ϣ����
	 * @throws Exception
	 */
	public List<MeetinginfoBean> fetchAllMeetingsinfoList(int i)
			throws Exception;
	/**
	 * 
	 * @���� ���ݻ����Ż�ȡ��ǰ������Ϣ
	 * @param id ��ػ�����
	 * @return ��ػ�����Ϣ
	 * @throws Exception
	 */
	public MeetinginfoBean fetchMeetinginfoById(int id) throws Exception;
	/**
	 * 
	 * @���� ȡ����ػ���
	 * @author ����
	 * @param meetinginfoBean ȡ���������Ϣ
	 * @return 0-ȡ��ʧ�ܣ�1-ȡ���ɹ�
	 * @throws Exception
	 */
	public int cancelMeeting(MeetinginfoBean meetinginfoBean) throws Exception;

}
