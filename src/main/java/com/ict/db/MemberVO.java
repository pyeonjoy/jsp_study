package com.ict.db;

public class MemberVO {
	private String idx,id,pwd,name,email,addr,phone,regdate;
	public MemberVO() {
	}
	public MemberVO(String idx, String id, String pwd, String name, String email, String addr, String phone,
			String regdate) {
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.regdate = regdate;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
