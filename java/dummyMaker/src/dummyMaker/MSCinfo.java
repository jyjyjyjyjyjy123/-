package dummyMaker;

public class MSCinfo {
	private String itemCode;
	private String category;
	private String ent;
	private String name;
	private String code;
	private String color;
	private String door;
	private String volume;
	public MSCinfo(String itemCode, String category, String ent, String name, String code, String color, String door,
			String volume) {
		super();
		this.itemCode = itemCode;
		this.category = category;
		this.ent = ent;
		this.name = name;
		this.code = code;
		this.color = color;
		this.door = door;
		this.volume = volume;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEnt() {
		return ent;
	}
	public void setEnt(String ent) {
		this.ent = ent;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDoor() {
		return door;
	}
	public void setDoor(String door) {
		this.door = door;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	@Override
	public String toString() {
		return "REF [itemCode=" + itemCode + ", category=" + category + ", ent=" + ent + ", name=" + name + ", code=" + code
				+ ", color=" + color + ", door=" + door + ", volume=" + volume + "]\n";
	}
	
}
