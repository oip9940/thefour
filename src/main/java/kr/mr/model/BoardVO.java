package kr.mr.model;

import java.util.Date;

public class BoardVO {
	private int brd_num;
	private int brd_cd;
	private String brd_title;
	private String brd_contents;
	private String brd_id;
	private String brd_file;
	private String brd_image;
	private Date brd_date;
	private String brd_yn;
	
	//////// search ///////////
	private String searchType; 
	private String keyWord;
	
	public String getSearchType() {
		return searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	
	/////////////////// paging //////////////////////
	private int startIndex; 
	private int cntPerPage;

	public int getStartIndex() {
		return startIndex;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	
	public BoardVO() {}

	public BoardVO(int brd_num, int brd_cd, String brd_title, String brd_contents, String brd_id, String brd_file,
			String brd_image, Date brd_date, String brd_yn) {
		super();
		this.brd_num = brd_num;
		this.brd_cd = brd_cd;
		this.brd_title = brd_title;
		this.brd_contents = brd_contents;
		this.brd_id = brd_id;
		this.brd_file = brd_file;
		this.brd_image = brd_image;
		this.brd_date = brd_date;
		this.brd_yn = brd_yn;
	}

	public int getBrd_num() {
		return brd_num;
	}

	public void setBrd_num(int brd_num) {
		this.brd_num = brd_num;
	}

	public int getBrd_cd() {
		return brd_cd;
	}

	public void setBrd_cd(int brd_cd) {
		this.brd_cd = brd_cd;
	}

	public String getBrd_title() {
		return brd_title;
	}

	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}

	public String getBrd_contents() {
		return brd_contents;
	}

	public void setBrd_contents(String brd_contents) {
		this.brd_contents = brd_contents;
	}

	public String getBrd_id() {
		return brd_id;
	}

	public void setBrd_id(String brd_id) {
		this.brd_id = brd_id;
	}

	public String getBrd_file() {
		return brd_file;
	}

	public void setBrd_file(String brd_file) {
		this.brd_file = brd_file;
	}

	public String getBrd_image() {
		return brd_image;
	}

	public void setBrd_image(String brd_image) {
		this.brd_image = brd_image;
	}

	public Date getBrd_date() {
		return brd_date;
	}

	public void setBrd_date(Date brd_date) {
		this.brd_date = brd_date;
	}

	public String getBrd_yn() {
		return brd_yn;
	}

	public void setBrd_yn(String brd_yn) {
		this.brd_yn = brd_yn;
	}

	@Override
	public String toString() {
		return "BoardVO [brd_num=" + brd_num + ", brd_cd=" + brd_cd + ", brd_title=" + brd_title + ", brd_contents="
				+ brd_contents + ", brd_id=" + brd_id + ", brd_file=" + brd_file + ", brd_image=" + brd_image
				+ ", brd_date=" + brd_date + ", brd_yn=" + brd_yn + "]";
	}
	
	
}
