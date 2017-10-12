package com.websystique.springboot.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

@SuppressWarnings("serial")
@Entity
@Table(name="Kisiler")
public class User implements Serializable{

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;

	@NotEmpty
	@Column(name="name", nullable=false)
	private String name;

	@Column(name="surname", nullable=false)
	private String surname;

	@Column(name="address", nullable=false)
	private String address;
	
	@Column(name="tck_no", nullable=false)
	private Integer tck_no;


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String  getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public Integer getTck_no() {
		return tck_no;
	}

	public void setTck_no(Integer tck_no) {
		this.tck_no = tck_no;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		User user = (User) o;

		if (Double.compare(user.tck_no, tck_no) != 0) return false;
		if (id != null ? !id.equals(user.id) : user.id != null) return false;
		if (name != null ? !name.equals(user.name) : user.name != null) return false;
		if (surname != null ? !surname.equals(user.surname) : user.surname != null) return false;
		if (address != null ? !address.equals(user.address) : user.address != null) return false;
		return false;
		
	}

	@Override
	public int hashCode() {
		int result;
		long temp;
		result = id != null ? id.hashCode() : 0;
		result = 31 * result + (name != null ? name.hashCode() : 0);
		result = 31 * result + (surname != null ? surname.hashCode() : 0);
		result = 31 * result + (address != null ? address.hashCode() : 0);
		temp = Double.doubleToLongBits(tck_no);
		result = 31 * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", surname=" + surname + ", address=" + address
				+ ", tck_no=" + tck_no + "]";
	}


}
