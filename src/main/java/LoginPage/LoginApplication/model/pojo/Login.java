package LoginPage.LoginApplication.model.pojo;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Getter
@ToString
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Login {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ID;
    @NotBlank(message = "Required")
    private String loginID;
    @Pattern(regexp = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$", message = "At least 8 characters, 1 special character, 1 number")
    private String password;
    @NotBlank(message = "Required")
    private String firstName;
    @NotBlank(message = "Required")
    private String lastName;
    @NotBlank(message = "Required")
    private String fatherName;
    @NotBlank(message = "Required")
    private String motherName;
    @NotBlank(message = "Required")
    private String dob;
    @Enumerated(EnumType.STRING)
    private Qualification qualification;
    @NotBlank(message = "Required")
    private String address1;
    @Column(nullable = true)
    private String address2;
    @NotBlank(message = "Required")
    private String city;
    @NotBlank(message = "Required")
    private String state;
    @NotBlank(message = "Required")
    private String country;
}
