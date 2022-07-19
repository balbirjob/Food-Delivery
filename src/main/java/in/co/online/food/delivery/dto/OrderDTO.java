package in.co.online.food.delivery.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="ORDERS")
public class OrderDTO extends BaseDTO {
	
	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
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

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public long getOrderid() {
		return orderid;
	}

	public void setOrderid(long orderid) {
		this.orderid = orderid;
	}

	public ProductDTO getProduct() {
		return product;
	}

	public void setProduct(ProductDTO product) {
		this.product = product;
	}

	@Column(name="TOTAL",length = 225)
	private String total;

	@Column(name="NAME",length = 225)
	private String name;
	
	@Column(name="EMAIL",length = 225)
	private String email;
	
	@Column(name="MOBILE_NO",length = 225)
	private String mobileNo;
	
	@Column(name="ADDRESS1",length = 225)
	private String address1;
	
	@Column(name="ADDRESS2",length = 225)
	private String address2;
	
	@Column(name="CITY",length = 225)
	private String city;
	
	@Column(name="STATE",length = 225)
	private String state;
	
	@Column(name="USER_ID")
	private long userId;
	
	@Column(name="QUANTITY",length = 225)
	private String quantity;
	
	@Column(name="ORDER_ID")
	private long orderid;
	
	@ManyToOne
	@JoinColumn(name="PRODUCTS",nullable = false)
	private ProductDTO product;
	

	
	
	@Override
	public String getKey() {
		return null;
	}

	@Override
	public String getValue() {
		return null;
	}

	
}
