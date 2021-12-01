package com.pgr301.exam.model;

import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class AccountTest {

    @Test
    void getBalance() {
        BigDecimal balance = new BigDecimal(100);
        BigDecimal expected = new BigDecimal(100);

        Account account = new Account();
        account.setBalance(balance);
        assertEquals(account.getBalance(), expected);
    }
}