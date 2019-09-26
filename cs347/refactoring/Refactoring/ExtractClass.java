/*
 *    Initial version
 */
class Person {
    private String _name;
    //refer to class office
    Office o = new Office();
    public String getName() {
        return _name;
    }

    
}

/*
 *   After first two steps:
 *     1. Decide how to split responsibilities then create new class
 *     2. Give old class an instance variable that refers to object of new class
 */

 class office {
    private String _officeAreaCode;
    private String _officeNumber;

    public String getPhoneNumber() {
        return "(" + _officeAreaCode + ") " + _officeNumber;
    }
 }