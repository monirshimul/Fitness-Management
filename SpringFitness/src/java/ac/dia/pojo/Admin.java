/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author Benzir
 */
public class Admin {
    
    private int adminId;
    private String name;
    private String password;
    private String role;

    public Admin() {
    }

    public Admin(int adminId, String name, String password, String role) {
        this.adminId = adminId;
        this.name = name;
        this.password = password;
        this.role = role;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "Admin{" + "adminId=" + adminId + ", name=" + name + ", password=" + password + ", role=" + role + '}';
    }
    
    
    
    
    
}
