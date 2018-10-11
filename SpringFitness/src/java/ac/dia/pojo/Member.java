/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author Monir
 */
public class Member {
    
    private int memberId;
    private String memberName;
    private String password;
    private String firstName;
    private String lastName;
    private String photo;
    private String gender;
    private String birthDate;
    private String height;
    private String weight;
    private String bloodGroup;
    private String nidNo;
    private String address;
    private String phone;
    private String email;
    private String joiningDate;
    private int instructorId;
    private int categoryPackageId;
    private String personalTrainer;
    private boolean active;

    public Member() {
    }

    public Member(int memberId, String memberName, String password, String firstName, String lastName, String photo, String gender, String birthDate, String height, String weight, String bloodGroup, String nidNo, String address, String phone, String email, String joiningDate, int instructorId, int categoryPackageId, String personalTrainer, boolean active) {
        this.memberId = memberId;
        this.memberName = memberName;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.photo = photo;
        this.gender = gender;
        this.birthDate = birthDate;
        this.height = height;
        this.weight = weight;
        this.bloodGroup = bloodGroup;
        this.nidNo = nidNo;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.joiningDate = joiningDate;
        this.instructorId = instructorId;
        this.categoryPackageId = categoryPackageId;
        this.personalTrainer = personalTrainer;
        this.active = active;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getNidNo() {
        return nidNo;
    }

    public void setNidNo(String nidNo) {
        this.nidNo = nidNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getJoiningDate() {
        return joiningDate;
    }

    public void setJoiningDate(String joiningDate) {
        this.joiningDate = joiningDate;
    }

    public int getInstructorId() {
        return instructorId;
    }

    public void setInstructorId(int instructorId) {
        this.instructorId = instructorId;
    }

    public int getCategoryPackageId() {
        return categoryPackageId;
    }

    public void setCategoryPackageId(int categoryPackageId) {
        this.categoryPackageId = categoryPackageId;
    }

    public String getPersonalTrainer() {
        return personalTrainer;
    }

    public void setPersonalTrainer(String personalTrainer) {
        this.personalTrainer = personalTrainer;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Member{" + "memberId=" + memberId + ", memberName=" + memberName + ", password=" + password + ", firstName=" + firstName + ", lastName=" + lastName + ", photo=" + photo + ", gender=" + gender + ", birthDate=" + birthDate + ", height=" + height + ", weight=" + weight + ", bloodGroup=" + bloodGroup + ", nidNo=" + nidNo + ", address=" + address + ", phone=" + phone + ", email=" + email + ", joiningDate=" + joiningDate + ", instructorId=" + instructorId + ", categoryPackageId=" + categoryPackageId + ", personalTrainer=" + personalTrainer + ", active=" + active + '}';
    }
    
    
    
    
    
}
