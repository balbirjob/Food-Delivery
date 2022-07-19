package in.co.online.food.delivery.dto;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "CATEGORY")
public class CategoryDTO extends BaseDTO {

	@Column(name = "NAME", length = 225)
	private String name;
	@Column(name = "DESCRIPTION", length = 225)
	private String description;
	@Column(name = "IMAGES", columnDefinition = "LONGBLOB")
	private byte[] images;

	@OneToMany(cascade = CascadeType.ALL,mappedBy = "category")
	private Set<CategoryDTO> category;
	
	@Override
	public String getKey() {
		return String.valueOf(id);
	}

	
	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public byte[] getImages() {
		return images;
	}



	public void setImages(byte[] images) {
		this.images = images;
	}



	public Set<CategoryDTO> getCategory() {
		return category;
	}



	public void setCategory(Set<CategoryDTO> category) {
		this.category = category;
	}



	@Override
	public String getValue() {
		return name;
	}
	
	
}
