package barbershop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="Barber")
@Table(name = "Barber")
public class Barber
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    private String firstName;
    private String lastName;
    private String phone;
    private String email;

    protected Barber() {}

    public Barber(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }
    public Barber(String firstName, String lastName, String phone){
        this(firstName, lastName);
        this.phone = phone;
    }

    public Barber(String firstName, String lastName, String phone, String email){
        this(firstName, lastName, phone);
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
