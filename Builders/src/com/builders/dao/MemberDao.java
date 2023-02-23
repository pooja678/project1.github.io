package com.builders.dao;

import java.io.InputStream;
import java.util.List;

import com.builders.model.Member;

public interface MemberDao {

	public boolean addMember(Member member);

	public boolean deleteMember(int memberId);

	public boolean updateMember(Member member);

	public Member getMemberById(int memeberId);

	public List<Member> getMemberByUserName(String userName);

	public List<Member> getAllMember();

	public boolean updatePassword(String email, String password);

	public String getMemberByEmail(String email);

	public Member validate(String email, String password);

	public boolean isEmailExists(String email);

	public long CountTotalMember();

	public boolean deleteFile(String path);

	public boolean saveFile(InputStream is, String path);
}
