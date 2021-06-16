package furniture.dao;

import java.util.List;

import furniture.bean.Product_qnaDTO;

public interface FurnitureDAO {

	public void productQnAWrite(Product_qnaDTO product_qnaDTO);

	public List<Product_qnaDTO> productQnAList();

}
