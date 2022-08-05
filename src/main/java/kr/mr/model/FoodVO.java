package kr.mr.model;

public class FoodVO {
	private int food_num;
	private int food_code;
	private String food_name;
	private int food_price;
	private String food_file;
	private String food_iamge;
	private String food_contents;
	private String food_yn;
	
	public FoodVO() {}
	
	

	public FoodVO(int food_num, int food_code, String food_name, int food_price, String food_file, String food_iamge,
			String food_contents, String food_yn) {
		super();
		this.food_num = food_num;
		this.food_code = food_code;
		this.food_name = food_name;
		this.food_price = food_price;
		this.food_file = food_file;
		this.food_iamge = food_iamge;
		this.food_contents = food_contents;
		this.food_yn = food_yn;
	}
	//메뉴리스트 출력
	public FoodVO(int food_num, int food_code, String food_name, int food_price, String food_contents, String food_yn) {
		super();
		this.food_num = food_num;
		this.food_code = food_code;
		this.food_name = food_name;
		this.food_price = food_price;
		this.food_contents = food_contents;
		this.food_yn = food_yn;
	}
	

	
	//메뉴등록
	public FoodVO(int food_num, int food_code, String food_name, int food_price,String food_contents) {
		super();
		this.food_num = food_num;
		this.food_code = food_code;
		this.food_name = food_name;
		this.food_price = food_price;
		this.food_contents = food_contents;
	}



	public int getfood_num() {
		return food_num;
	}

	public void setfood_num(int food_num) {
		this.food_num = food_num;
	}

	public int getfood_code() {
		return food_code;
	}

	public void setfood_code(int food_code) {
		this.food_code = food_code;
	}

	public String getfood_name() {
		return food_name;
	}

	public void setfood_name(String food_name) {
		this.food_name = food_name;
	}

	public int getfood_price() {
		return food_price;
	}

	public void setfood_price(int food_price) {
		this.food_price = food_price;
	}

	public String getfood_file() {
		return food_file;
	}

	public void setfood_file(String food_file) {
		this.food_file = food_file;
	}

	public String getfood_iamge() {
		return food_iamge;
	}

	public void setfood_iamge(String food_iamge) {
		this.food_iamge = food_iamge;
	}

	public String getfood_contents() {
		return food_contents;
	}

	public void setfood_contents(String food_contents) {
		this.food_contents = food_contents;
	}

	public String getfood_yn() {
		return food_yn;
	}

	public void setfood_yn(String food_yn) {
		this.food_yn = food_yn;
	}

	@Override
	public String toString() {
		return "foodVO [food_num=" + food_num + ", food_code=" + food_code + ", food_name=" + food_name + ", food_price="
				+ food_price + ", food_file=" + food_file + ", food_iamge=" + food_iamge + ", food_contents="
				+ food_contents + ", food_yn=" + food_yn + "]";
	}
	
	
	
}
