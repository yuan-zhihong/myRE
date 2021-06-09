package beans;


public class Book {
    private String id;
    private String name;
    private double bookprice;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getBookname() {
        return name;
    }
    public void setBookname(String bookname) {
        this.name = bookname;
    }
    public double getBookprice() {
        return bookprice;
    }
    public void setBookprice(double bookprice) {
        this.bookprice = bookprice;
    }
}