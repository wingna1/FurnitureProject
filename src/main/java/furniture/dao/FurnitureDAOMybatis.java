package furniture.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class FurnitureDAOMybatis implements FurnitureDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
}
