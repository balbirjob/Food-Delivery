package in.co.online.food.delivery.service;

import java.util.List;

import in.co.online.food.delivery.dto.CartDTO;
import in.co.online.food.delivery.exception.DuplicateRecordException;

public interface CartServiceInt {

	public long add(CartDTO dto) throws DuplicateRecordException;

	public void delete(CartDTO dto);

	public CartDTO findBypk(long pk);

	public CartDTO findByName(String name);

	public void update(CartDTO dto) throws DuplicateRecordException;

	public List<CartDTO> list();

	public List<CartDTO> list(int pageNo, int pageSize);

	public List<CartDTO> search(CartDTO dto);

	public List<CartDTO> search(CartDTO dto, int pageNo, int pageSize);
	

}
