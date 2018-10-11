/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author Administrator
 */
public class Employee {
    private int employeeId;
    private String employeeName;
    private String photo;
    private String password;
    private String role;
    private String gender;
    private String phone;
    private String email;
    private String address;
    private int salary;
    private boolean active;

    public Employee() {
    }

    public Employee(int employeeId, String employeeName, String photo, String password, String role, String gender, String phone, String email, String address, int salary, boolean active) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.photo = photo;
        this.password = password;
        this.role = role;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.salary = salary;
        this.active = active;
    }
    
   
    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Employee{" + "employeeId=" + employeeId + ", employeeName=" + employeeName + ", photo=" + photo + ", password=" + password + ", role=" + role + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", address=" + address + ", salary=" + salary + ", active=" + active + '}';
    }
   
    
    
    
    
}
