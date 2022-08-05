package kr.mr.model;

import java.util.Date;

public class UserVO {
	private String user_id;
	private int user_num;
	private int user_cd;
	private String user_pw;
	private String user_name;
	private Date user_birth;
	private String user_tel;
	private String user_email;
	private String user_auth;
	private String user_yn;
	
	public UserVO() {}
	
	
	
	public UserVO(String user_id, int user_num, int user_cd, String user_pw, String user_name, Date user_birth,
			String user_tel, String user_email, String user_auth, String user_yn) {
		super();
		this.user_id = user_id;
		this.user_num = user_num;
		this.user_cd = user_cd;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_tel = user_tel;
		this.user_email = user_email;
		this.user_auth = user_auth;
		this.user_yn = user_yn;
	}



	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public int getUser_cd() {
		return user_cd;
	}
	public void setUser_cd(int user_cd) {
		this.user_cd = user_cd;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_auth() {
		return user_auth;
	}
	public void setUser_auth(String user_auth) {
		this.user_auth = user_auth;
	}
	public String getUser_yn() {
		return user_yn;
	}
	public void setUser_yn(String user_yn) {
		this.user_yn = user_yn;
	}
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_num=" + user_num + ", user_cd=" + user_cd + ", user_pw=" + user_pw
				+ ", user_name=" + user_name + ", user_birth=" + user_birth + ", user_tel=" + user_tel + ", user_email="
				+ user_email + ", user_auth=" + user_auth + ", user_yn=" + user_yn + "]";
	}
	
	
}
