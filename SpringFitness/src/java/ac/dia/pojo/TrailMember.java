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
public class TrailMember {
    private int trailMemberId;
    private String trailMemberName;
    private String phone;
    private String email;

    public TrailMember() {
    }

    public TrailMember(int trailMemberId, String trailMemberName, String phone, String email) {
        this.trailMemberId = trailMemberId;
        this.trailMemberName = trailMemberName;
        this.phone = phone;
        this.email = email;
    }

    public int getTrailMemberId() {
        return trailMemberId;
    }

    public void setTrailMemberId(int trailMemberId) {
        this.trailMemberId = trailMemberId;
    }

    public String getTrailMemberName() {
        return trailMemberName;
    }

    public void setTrailMemberName(String trailMemberName) {
        this.trailMemberName = trailMemberName;
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

    @Override
    public String toString() {
        return "TrailMember{" + "trailMemberId=" + trailMemberId + ", trailMemberName=" + trailMemberName + ", phone=" + phone + ", email=" + email + '}';
    }
    
    
    
}
