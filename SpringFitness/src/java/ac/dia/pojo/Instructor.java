/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author Muiduzzaman Lipu
 */
public class Instructor {
    private int instructorId;
    private int employeeId;
    private int categoryPackageId;
    private int personalInstructorRate;
    private String shift;

    public Instructor() {
    }

    public Instructor(int instructorId, int employeeId, int categoryPackageId, int personalInstructorRate, String shift) {
        this.instructorId = instructorId;
        this.employeeId = employeeId;
        this.categoryPackageId = categoryPackageId;
        this.personalInstructorRate = personalInstructorRate;
        this.shift = shift;
    }

    public int getInstructorId() {
        return instructorId;
    }

    public void setInstructorId(int instructorId) {
        this.instructorId = instructorId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public int getCategoryPackageId() {
        return categoryPackageId;
    }

    public void setCategoryPackageId(int categoryPackageId) {
        this.categoryPackageId = categoryPackageId;
    }

    public int getPersonalInstructorRate() {
        return personalInstructorRate;
    }

    public void setPersonalInstructorRate(int personalInstructorRate) {
        this.personalInstructorRate = personalInstructorRate;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    @Override
    public String toString() {
        return "Instructor{" + "instructorId=" + instructorId + ", employeeId=" + employeeId + ", categoryPackageId=" + categoryPackageId + ", personalInstructorRate=" + personalInstructorRate + ", shift=" + shift + '}';
    }

    
}
