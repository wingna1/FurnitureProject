package furniture.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import furniture.bean.Product_qnaDTO;
import furniture.bean.ReviewDTO;

@Repository
@Transactional
public class FurnitureDAOMybatis implements FurnitureDAO {
	@Autowired
	private SqlSession sqlSession;

	// 상품 문의 작성
	@Override
	public void productQnAWrite(Product_qnaDTO product_qnaDTO) {
		sqlSession.insert("productSQL.productQnAWrite", product_qnaDTO);
	}

	// 상품 문의 리스트
	@Override
	public List<Product_qnaDTO> productQnAList(String pg) {
		return sqlSession.selectList("productSQL.productQnAList");
	}

	// 상품 문의 총 갯수
	@Override
	public int getTotalQNA() {
		return sqlSession.selectOne("productSQL.getTotalQNA");
	}

	// 리뷰 총 갯수
	@Override
	public int getTotalReview() {
		return sqlSession.selectOne("productSQL.getTotalReview");
	}

	// 상품 리뷰 리스트
	@Override
	public List<ReviewDTO> reviewList(Map<String, Integer> map) {
		return sqlSession.selectList("productSQL.reviewList", map);
	}

	// 상품 문의 리스트 + 페이징
	@Override
	public List<Product_qnaDTO> productQnAListPaging(Map<String, Integer> map) {
		return sqlSession.selectList("productSQL.productQnAListPaging", map);
	}

	@Override
	public List<ReviewDTO> reviewListTop5() {
		return sqlSession.selectList("productSQL.reviewListTop5");
	}


}
