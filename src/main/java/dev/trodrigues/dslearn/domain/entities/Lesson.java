package dev.trodrigues.dslearn.domain.entities;

import javax.persistence.*;

import java.io.Serializable;
import java.util.*;

@Entity
@Table(name = "tb_lessons")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Lesson implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private Integer position;

    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section;

    @ManyToMany
    @JoinTable(name = "tb_lessons_done", joinColumns = @JoinColumn(name = "lesson_id"), inverseJoinColumns = {
            @JoinColumn(name = "user_id"),
            @JoinColumn(name = "offer_id")
    })
    private Set<Enrollment> enrollmentsDone = new HashSet<>();

    @OneToMany(mappedBy = "lesson")
    private List<Deliver> deliveries = new ArrayList<>();

    @OneToMany(mappedBy = "lesson")
    private List<Topic> topics = new ArrayList<>();

    protected Lesson() {
    }

    protected Lesson(Long id, String title, Integer position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public Set<Enrollment> getEnrollmentsDone() {
        return enrollmentsDone;
    }

    public List<Deliver> getDeliveries() {
        return deliveries;
    }

    public List<Topic> getTopics() {
        return topics;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Lesson other = (Lesson) obj;
        return Objects.equals(id, other.id);
    }

}
