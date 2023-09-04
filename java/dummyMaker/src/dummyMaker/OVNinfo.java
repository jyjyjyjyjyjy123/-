package dummyMaker;

public class OVNinfo {
	private String itemCode;
	private String category;
	private String ent;
	private String name;
	private String code;
	private String color;
	private String door;
	private String door2;
	private String volume;
	public OVNinfo(String itemCode, String category, String ent, String name, String code, String color, String door,String door2,
			String volume) {
		super();
		this.itemCode = itemCode;
		this.category = category;
		this.ent = ent;
		this.name = name;
		this.code = code;
		this.color = color;
		this.door = door;
		this.door2 = door2;
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
	public String getDoor2() {
		return door2;
	}
	public void setDoor2(String door2) {
		this.door2 = door2;
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
				+ ", color=" + color + ", door=" + door + ", door2=" + door2 + ", volume=" + volume + "]\n";
	}
	
}
