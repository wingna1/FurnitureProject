package furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.bean.Product_qnaDTO;
import furniture.dao.FurnitureDAO;

@Service
public class FurnitureServiceImpl implements FurnitureService {
	@Autowired
	private FurnitureDAO furnitureDAO;

	@Override
	public void productQnAWrite(Product_qnaDTO product_qnaDTO) {
		System.out.println("서비스 도착");
		furnitureDAO.productQnAWrite(product_qnaDTO);
	}

	@Override
	public List<Product_qnaDTO> productQnAList() {
		return furnitureDAO.productQnAList();
	}
	
	
}
