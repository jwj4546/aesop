package com.aesop.per;

import java.util.List;


import com.aesop.domain.Review;

public interface ReviewMapper {

	public List<Review> getReviewList();
	public Review getReview(int no);
	public int getTotalCount();
	public void insReview(Review review);
	public void upReview(Review review);
	public void delReview(int no);
}
