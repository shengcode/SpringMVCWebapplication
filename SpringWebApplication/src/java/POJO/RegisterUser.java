
package POJO;

public class RegisterUser {
    private String name;
    private String phone;
    private String email;
    private String password;
    private String confirmpassword;
    private String [] hobby;
    private String country;
    private String gender;
    private String feedback;
    
    
     public RegisterUser() {
        this.name = "";
        this.phone = "";
        this.email = "";
        this.password = "";
        this.confirmpassword = "";
        this.hobby = null;
        this.country = "";
        this.gender = "";
        this.feedback = "";
    }

    public RegisterUser(String name, String phone, String email, String password, String confirmpassword,  String country, String gender, String feedback) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.confirmpassword = confirmpassword;
        this.hobby = hobby;
        this.country = country;
        this.gender = gender;
        this.feedback = feedback;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmpassword() {
        return confirmpassword;
    }

    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }

   
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
   

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }

    @Override
    public String toString() {
        return "RegisterUser{" + "name=" + name + ", phone=" + phone + ", email=" + email + ", password=" + password + ", confirmpassword=" + confirmpassword + ", hobby=" + hobby + ", country=" + country + ", gender=" + gender + ", feedback=" + feedback + '}';
    }

    
    
    
    
    
    
    
    
    
}
