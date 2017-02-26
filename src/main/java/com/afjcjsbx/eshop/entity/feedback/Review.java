package com.afjcjsbx.eshop.entity.feedback;

/**
 * Created by Davide on 13/02/2017.
 */
public class Review {

    private int reviewId;
    private int productId; // reviewed product
    private String username; // the consumer who is providing his feedback. Users are identified by email username
    private int rating; // rating in number of stars
    private String comment; // comment of the user about the product

    public Review(int reviewId, int productId, String username, int rating, String comment) {
        this.reviewId = reviewId;
        this.productId = productId;
        this.username = username;
        this.rating = rating;
        this.comment = comment;
    }

    // costruttore usato nelle operazioni di creazione review perchè il db mi fa l'autoincrement
    public Review(int productId, String username, int rating, String comment) {
        this.productId = productId;
        this.username = username;
        this.rating = rating;
        this.comment = comment;
    }

    public int getReviewId() {
        return reviewId;
    }

    public int getProductId() {
        return productId;
    }

    public String getUsername() {
        return username;
    }

    public int getRating() {
        return rating;
    }

    public String getComment() {
        return comment;
    }


}
