package com.javagda31.ProjectPet.model;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Formula;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor

public class Owner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
    private int age;

//   @Formula("SELECT AVG(p.agePet) from Pet p  where p.owner_id=id")
    private Double averageAgePupils;


//   @Formula("SELECT SUM(iloscPupils) from Owner")
    private int iloscPupils;

    @OneToMany(mappedBy = "owner",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
    @Cascade(value = org.hibernate.annotations.CascadeType.REMOVE)
    @EqualsAndHashCode.Exclude
    private Set<Pet> pupils;

}
