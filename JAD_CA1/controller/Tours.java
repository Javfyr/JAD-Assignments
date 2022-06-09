package tours;

public class Tours {
	private int Id;
	private String Title;
	private String BriefDesc;
	private String DetailedDesc;
	private String Price;
	private String AvailableSlots;
	private String ImgLocation;
	private int CategoryID;
	
	public Tours(int id, String title, String briefDesc, String detailedDesc, String price,  String availableSlots, String imgLocation, int categoryID) {
		
		Id = id;
		Title = title;
		BriefDesc = briefDesc;
		DetailedDesc = detailedDesc;
		Price = price;
		AvailableSlots = availableSlots;
		ImgLocation = imgLocation;
		CategoryID = categoryID;
				
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getBriefDesc() {
		return BriefDesc;
	}

	public void setBriefDesc(String briefDesc) {
		BriefDesc = briefDesc;
	}

	public String getDetailedDesc() {
		return DetailedDesc;
	}

	public void setDetailedDesc(String detailedDesc) {
		DetailedDesc = detailedDesc;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public String getAvailableSlots() {
		return AvailableSlots;
	}

	public void setAvailableSlots(String availableSlots) {
		AvailableSlots = availableSlots;
	}

	public String getImgLocation() {
		return ImgLocation;
	}

	public void setImgLocation(String imgLocation) {
		ImgLocation = imgLocation;
	}

	public int getCategoryID() {
		return CategoryID;
	}

	public void setCategoryID(int categoryID) {
		CategoryID = categoryID;
	}
	
}
