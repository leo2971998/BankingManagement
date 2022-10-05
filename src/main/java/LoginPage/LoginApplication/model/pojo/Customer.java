package LoginPage.LoginApplication.model.pojo;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long customerID;
    @NotBlank(message = "Required")
    private String firstName;
    @NotBlank(message = "Required")
    private String lastName;
    @NotBlank(message = "Required")
    @Email(message = "Email should be valid")
    private String email;
    @NotBlank(message = "Required")
    private String phoneNumber;
    @NotBlank(message = "Required")
    private String Dob;

}
