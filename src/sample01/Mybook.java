package sample01;

public class Mybook {
	private String title;
	private int price;

	 public Mybook(String title, int price) {
		super();
		this.title = title;
		this.price = price;
	}
	 
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;

	}
}
