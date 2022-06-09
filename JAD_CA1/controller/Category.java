package category;

public class Category {
	private int Id;
	private String Name;
	private String ImgCategory;
	
	public Category(int id, String name, String imgCategory) {
		
		Id = id;
		Name = name;
		ImgCategory = imgCategory;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getImgCategory() {
		return ImgCategory;
	}

	public void setImgCategory(String imgCategory) {
		ImgCategory = imgCategory;
	}
}
