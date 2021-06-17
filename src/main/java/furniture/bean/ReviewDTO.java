package furniture.bean;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	private int id; //  seq
	private String email, product_id, product_name; // 작성자, 상품명, 상품코드
	private int review_stars; // 별점 1~5
	private String review_content, review_image; 
	private Date created_at;//등록일
}
