package com.afjcjsbx.eshop.boundary;

import com.afjcjsbx.eshop.entity.payment.Transaction;


public class CreditCardSociety {
    private Transaction transaction;

    public CreditCardSociety(Transaction transaction) {
        this.transaction = transaction;
    }

    public boolean forwardPayment() {
        //TODO qui bisognerebbe invocare le API della società
        return true; // pagamento andato a buon fine
    }
}
