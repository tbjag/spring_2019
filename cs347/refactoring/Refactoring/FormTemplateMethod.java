/*
 *   Example of "Form Template Method" refactoring.
 *
 *   Businesses and individuals are taxed differently
 *   on their purchases.  Individuals pay 3.5% tax on
 *   the full price.  Businesses pay 7% tax but on only
 *   90% of the price.  (Governments make exceptions like
 *   this all the time!)
 *
 *   Below, two subclasses have a method that is similar
 *   but not the same.
 */
class Customer {
    abstract double tax;
    double totalDue(){
        return cost* (1+tax);
    }
}
class Individual extends Customer {
    tax = .07;
}
class Business extends Customer {
    tax = .063;
}
