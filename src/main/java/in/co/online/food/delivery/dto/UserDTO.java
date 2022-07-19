package in.co.online.food.delivery.dto;


import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "USER")

public class UserDTO extends BaseDTO {


	@Column(name = "FIRST_NAME", length = 225)
	private String firstName;

	@Column(name = "LAST_NAME", length = 225)
	private String lastName;

	@Column(name = "LOGIN")
	private String login;

	@Column(name = "PASSWORD", length = 225)
	private String password;

	private String confirmPassword;

	@Column(name = "ROLE_ID", length = 225)
	private long roleId;

	@Column(name = "EMAIL_ID", length = 225)
	private String emailId;
	
	@Column(name = "GENDER", length = 225)
	private String gender;
	
	@Column(name = "DOB")
	@Temporal(TemporalType.DATE)
	private Date dob;
	
	@Column(name = "CONTACT_NO", length = 225)
	private String contactNo;

	@Column(name = "USER_ADDRESS",length = 225)
	public String address;
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "user")
	private Set<CartDTO> carts;
	
	
	public String getKey() {
		return id + "";
	}

	public String getValue() {
		return firstName + " " + lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public long getRoleId() {
		return roleId;
	}

	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public Set<CartDTO> getCarts() {
		return carts;
	}

	public void setCarts(Set<CartDTO> carts) {
		this.carts = carts;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
