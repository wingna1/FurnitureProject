package furniture.bean;

import java.sql.Date;

import lombok.Data;

@Data
public class Product_qnaDTO {
	private int id;//기본키, 문의seq
	private String email;//이메일=아이디 ... 누가 문의를 남겼는지
	private String product_id;//제품명 ... 어떤 상품에 대한 문의인지
	private String qna_subject;//문의의 제목

	private String qna_content;//문의의 내용
	private Date created_at;//등록일
	private int reply;//댓글 수

}
