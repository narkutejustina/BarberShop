package barbershop.entity;


import javax.persistence.*;

@Entity(name="Task")
@Table(name = "Task")
public class Task {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int taskId;
    private String title;
    private int duration;
    private int price;

    public Task() {}

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
