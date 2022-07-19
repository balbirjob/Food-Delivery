package in.co.online.food.delivery.service;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Logger;
import javax.sql.rowset.serial.SerialException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import in.co.online.food.delivery.dao.CartDAOInt;
import in.co.online.food.delivery.dto.CartDTO;
import in.co.online.food.delivery.exception.DuplicateRecordException;

@Service
public class CartServiceImpl implements CartServiceInt {

	private static Logger log = Logger.getLogger(CartServiceImpl.class.getName());

	@Autowired
	private CartDAOInt dao;

	@Autowired
	private JavaMailSenderImpl mailSender;

	@Override
	@Transactional
	public long add(CartDTO dto) throws DuplicateRecordException {
		log.info("CartServiceImpl Add method start");
		long pk = dao.add(dto);
		log.info("CartServiceImpl Add method end");
		return pk;
	}

	@Override
	@Transactional
	public void delete(CartDTO dto) {
		log.info("CartServiceImpl Delete method start");
		dao.delete(dto);
		log.info("CartServiceImpl Delete method end");

	}

	@Override
	@Transactional
	public CartDTO findBypk(long pk) {
		log.info("CartServiceImpl findBypk method start");
		CartDTO dto = dao.findBypk(pk);
		log.info("CartServiceImpl findBypk method end");
		return dto;
	}

	@Override
	@Transactional
	public CartDTO findByName(String name) {
		log.info("CartServiceImpl findByCartName method start");
		CartDTO dto = dao.findByName(name);
		log.info("CartServiceImpl findByCartName method end");
		return dto;
	}

	@Override
	@Transactional
	public void update(CartDTO dto) throws DuplicateRecordException {
		log.info("CartServiceImpl update method start");
		dao.update(dto);
		log.info("CartServiceImpl update method end");
	}

	@Override
	@Transactional
	public List<CartDTO> list() {
		log.info("CartServiceImpl list method start");
		List<CartDTO> list = dao.list();
		log.info("CartServiceImpl list method end");
		return list;
	}

	@Override
	@Transactional
	public List<CartDTO> list(int pageNo, int pageSize) {
		log.info("CartServiceImpl list method start");
		List<CartDTO> list = dao.list(pageNo, pageSize);
		log.info("CartServiceImpl list method end");
		return list;
	}

	@Override
	@Transactional
	public List<CartDTO> search(CartDTO dto) {
		log.info("CartServiceImpl search method start");
		List<CartDTO> list = dao.search(dto);
		log.info("CartServiceImpl search method end");
		return list;
	}

	@Override
	@Transactional
	public List<CartDTO> search(CartDTO dto, int pageNo, int pageSize) {
		log.info("CartServiceImpl search method start");
		List<CartDTO> list = dao.search(dto, pageNo, pageSize);
		log.info("CartServiceImpl search method end");
		return list;
	}
	

}
