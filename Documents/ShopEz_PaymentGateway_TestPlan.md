# ShopEz Payment Gateway – Test Plan

**Prepared by:** Hottensiah Nyanjui 
**Role:** QA Engineer  

---

## 1. Objective

To validate that the ShopEz payment gateway processes payments correctly, handles failures safely, protects sensitive data, and provides a smooth checkout experience.

Supported payment methods:
- Credit/Debit Cards
- Digital Wallets
- Bank Transfers

---

## 2. Functional Testing

### Key Scenarios

- Successful payment
- Failed payment (insufficient funds)
- Expired card
- Cancelled payment
- Network interruption during payment
- Tax, discount, and shipping calculations

### Expected Behavior

- Valid payments update order status to **Paid**
- Failed payments do NOT update order status
- Users receive clear confirmation or error messages
- No duplicate transactions occur
- Final payable amount = subtotal + tax + shipping – discount

---

## 3. Error Handling

If payment fails:
- Order remains unpaid
- Cart remains intact
- Clear, non-technical error message shown
- User can retry or switch payment method

Error messages should:
- Be user-friendly
- Not expose technical details
- Provide next steps

---

## 4. Security Considerations

- All payment data transmitted via HTTPS
- Card details encrypted
- CVV never stored
- Only last 4 digits of card displayed
- No exposure of API keys 

Potential risks:
- Duplicate payments
- SQL injection
- Sensitive data leakage
- Incorrect payment status updates

---

## 5. Usability

- Checkout flow should be simple and minimal
- Payment options clearly visible
- Easy switching between payment methods
- Clear cost breakdown before confirmation
- Mobile-friendly experience

---

## 6. Test Cases

| TC ID | Scenario | Expected Result |
|-------|----------|----------------|
| TC001 | Successful card payment | Order marked Paid, confirmation shown |
| TC002 | Insufficient funds | Payment declined, retry allowed |
| TC003 | Expired card | Validation error shown |
| TC004 | Cancel payment | No charge, order remains unpaid |
| TC005 | Network interruption | No duplicate charge, status clarified |
| TC006 | Invalid CVV | Payment rejected |
| TC007 | Apply discount code | Correct discount applied |
| TC008 | Switch payment method | Method updated successfully |
| TC009 | Retry after failed payment | Successful processing |
| TC010 | Wallet insufficient balance | Clear decline message |

---

## Conclusion

The payment gateway should ensure secure, accurate, and user-friendly transactions.  
Proper validation, error handling, and security controls are critical to maintaining customer trust and preventing financial risk.
