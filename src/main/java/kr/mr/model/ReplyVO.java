package kr.mr.model;

import java.util.Date;

import lombok.Data;
import lombok.Setter;

@Data
public class ReplyVO {
	private int rep_num;
	private int brd_num;
	
	private String rep_title;
	private String rep_contents;
	private String rep_id;
	private Date rep_date;
	private String rep_yn;
}
