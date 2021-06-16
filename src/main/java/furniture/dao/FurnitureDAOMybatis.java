package furniture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import furniture.bean.Product_qnaDTO;

@Repository
@Transactional
public class FurnitureDAOMybatis implements FurnitureDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void productQnAWrite(Product_qnaDTO product_qnaDTO) {
		System.out.println("dao 도착");
		System.out.println(product_qnaDTO.getEmail() + " / " + product_qnaDTO.getId() + " / " + product_qnaDTO.getProduct_id() + " / " + product_qnaDTO.getQna_content());
		sqlSession.insert("productSQL.productQnAWrite", product_qnaDTO);
		
	}

	@Override
	public List<Product_qnaDTO> productQnAList() {
		return sqlSession.selectList("productSQL.productQnAList");
	}
	
	
}
