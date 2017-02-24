package com.afjcjsbx.eshop.controller.purchase;

import com.afjcjsbx.eshop.boundary.ExternalPaymentService;
import com.afjcjsbx.eshop.entity.checkout.Transaction;
import com.afjcjsbx.eshop.exceptions.TransactionNotValidException;


public class PaymentController implements Runnable{
    private Transaction transaction;

    public PaymentController(Transaction transaction) throws TransactionNotValidException {
        this.transaction = transaction;
    }

    public Transaction getTransaction() {
        return transaction;
    }

    @Override
    public void run() {
        if (transaction.getPayment().validatePaymentService()){
            //transaction.getPayment().calculateAdditionalPaymentFees();
            ExternalPaymentService externalPaymentService = new ExternalPaymentService(transaction);
            if (externalPaymentService.forwardPayment())
                System.out.println("Payment completed");
        }
    }

/*    public void confirmForm(String cardNumber, String ownerFirstName, String ownerLastName, String expirationDate) {
        try {
            CreditCard creditCard = new CreditCard(cardNumber, ownerFirstName, ownerLastName, expirationDate);
            transaction.setCreditCard(creditCard);
            if (new CreditCardSociety(transaction).forwardPayment())
                setTransactionStatus(Status.Approved);
            else
                setTransactionStatus(Status.Failed);
        } catch (CreditCardCredentialNotValid creditCardCredentialNotValid) {
            JOptionPane.showMessageDialog(new Frame(), creditCardCredentialNotValid.getMessage());
            creditCardCredentialNotValid.printStackTrace();
        }
    }*/

   /* public void attachObserver(PaymentObserver observer) {
        this.observer = observer;
    }*/

    /*
    public void detachObserver(){
        this.observer = null;
    }
    */

    /*public void setTransactionStatus(Status status) {
        try {
            this.observer.update(status);
            this.transaction.setStatus(status);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }*/

}
