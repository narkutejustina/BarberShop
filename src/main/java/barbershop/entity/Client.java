package barbershop.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name="Client")
@Table(name="Client")
public class Client implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "ClientId")
    private int clientId;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String comment;

    public Client(){}

    public Client(String firstName, String lastName, String email)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public Client(String firstName, String lastName, String email, String phone)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
    }

    public Client(String firstName, String lastName, String email, String phone, String comment)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.comment = comment;
    }

    public int getClientId()
    {
        return clientId;
    }

    protected void setClientId(int id)
    {
        this.clientId = id;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getComment()
    {
        return comment;
    }

    public void setComment(String comment)
    {
        this.comment = comment;
    }

    public boolean isEqualByInfo(String fname, String lname, String email, String phone){
        return fname.contentEquals(firstName)&&lname.contentEquals(lastName)
                && email.contentEquals(this.email) && phone.contentEquals(this.phone);
    }
}
