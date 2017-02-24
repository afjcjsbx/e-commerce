package com.afjcjsbx.eshop.bean;

import com.afjcjsbx.eshop.controller.feedback.ManageFeedbackController;
import com.afjcjsbx.eshop.entity.feedback.Review;
import com.afjcjsbx.eshop.entity.catalogue.Product;
import com.afjcjsbx.eshop.exceptions.DatabaseException;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Davide on 13/02/2017.
 */
public class ManageFeedbackBean implements Serializable {
	/**
	 * La bean ha come attributi gli input dell'utente, inviatigli dallo strato view, in questo caso sarà una pagina JSP
	 */
    private int productId; // reviewed product
	private String username;
    private int rating;
    private String comment;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productName) {
		this.productId = productName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public boolean validate() throws DatabaseException {
        // Syntax check
		if (this.productId == 0 || this.comment == "" || this.rating < 1 || this.rating > 5)
			return false;

		ManageFeedbackController feedbackController = ManageFeedbackController.getInstance();
		List<Review> reviewsFromUser = feedbackController.retrieveReviewsFromUser(this.getUsername());

        for (Review t : reviewsFromUser) {
            if(t.getProductId() == this.getProductId())
                return false;
        }

        return true;
    }

    public static void main(String[] args) throws DatabaseException {
        ManageFeedbackBean bean = new ManageFeedbackBean();
        bean.setComment("a");
        bean.setProductId(2);
        bean.setRating(3);
        bean.setUsername("Luca");
        System.out.print(bean.validate());
    }
}
