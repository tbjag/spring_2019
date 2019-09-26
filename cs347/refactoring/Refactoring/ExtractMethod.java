/*
 *   Version 2
 *
 *   Name is "printAmountOwed" but method (1) prints and
 *   (2) calculates for (3) both current and prior orders.
 *
 *   
 */
 void printAmountOwed(double balance) {

     Enumeration e = _orders.elements();
     double outstanding = 0.0;

     System.out.println("***********************\n***  Customer owes  ***\n***********************");

    get_stuff(e);

     System.out.println("name: " + _name);
     System.out.println("amount = " + (balance + outstanding));
 }

 int get_stuff {
    while (e.hasMoreElements()) {
        Order order = (Order) e.nextElement();
        outstanding += order.getAmount();
    }
 }
 