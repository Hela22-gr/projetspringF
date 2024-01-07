package com.example.ems.dto;
import com.example.ems.entity.Employee;


import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
public class EmployeeDto {
    private long id;
    private String firstName;
    private String lastName;
    private String email;
}
