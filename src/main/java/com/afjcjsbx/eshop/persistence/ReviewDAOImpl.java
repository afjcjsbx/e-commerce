package com.afjcjsbx.eshop.persistence;

import com.afjcjsbx.eshop.entity.feedback.Review;
import com.afjcjsbx.eshop.exceptions.DatabaseException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * ConcreteDAO implemented via JDBC. It is Singleton.
 */
public class ReviewDAOImpl implements ReviewDAO {

    private static ReviewDAOImpl instance;

    public synchronized static ReviewDAOImpl getInstance() {
        if (instance == null)
            instance = new ReviewDAOImpl();
        return instance;
    }

    private ReviewDAOImpl() {
    }

    @Override
    public void storeReview(Review review) throws DatabaseException {

        try {
            PreparedStatement stm = DataSource.getConnection().prepareStatement(Query.ADD_REVIEW);
            // setta i parametri della query. Assumiamo auto-increment
            stm.setInt(1, review.getProductId());
            stm.setString(2, review.getUsername());
            stm.setInt(3, review.getRating());
            stm.setString(4, review.getComment());

            stm.executeUpdate();

            stm.close();

        } catch (SQLException e) {
            throw new DatabaseException("Cannot write on database");
        }
    }

    @Override
    public List<Review> findReviewsByProductId(int productId) throws DatabaseException {
        try {
            List<Review> reviewsList = new ArrayList<>();

            Connection conn = DataSource.getConnection();
            PreparedStatement stm = conn.prepareStatement(Query.FIND_REVIEWS_BY_PRODUCT_ID);
            stm.setInt(1, productId);

            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Review review = new Review(rs.getInt("reviewId"),
                        rs.getInt("productId"),
                        rs.getString("username"),
                        rs.getInt("rating"),
                        rs.getString("comment"));
                reviewsList.add(review);
            }
            stm.close();
            return reviewsList;
        } catch (SQLException e) {
            throw new DatabaseException("Cannot fetch from database", e);
        }
    }

    @Override
    public List<Review> findReviewsByUsername(String username) throws DatabaseException {
        try {
            List<Review> reviewsList = new ArrayList<>();

            Connection conn = DataSource.getConnection();
            PreparedStatement stm = conn.prepareStatement(Query.FIND_REVIEWS_BY_USERNAME);
            stm.setString(1, username);

            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Review review = new Review(rs.getInt("reviewId"),
                        rs.getInt("productId"),
                        rs.getString("username"),
                        rs.getInt("rating"),
                        rs.getString("comment"));
                reviewsList.add(review);
            }
            stm.close();
            return reviewsList;
        } catch (SQLException e) {
            throw new DatabaseException("Cannot fetch from database", e);
        }
    }

    public static void main(String[] args) throws DatabaseException {
        List<Review> reviews= ReviewDAOImpl.getInstance().findReviewsByProductId(2);

        System.out.println(reviews);
    }

}
