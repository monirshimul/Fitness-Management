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
public class Salary {
    private int salaryId;
    private int employeeId;
    private float salary;
    private int personalTrainerCommision;
    private float bonus;
    private String month;
    private int year;

    public Salary() {
    }

    public Salary(int salaryId, int employeeId, float salary, int personalTrainerCommision, float bonus, String month, int year) {
        this.salaryId = salaryId;
        this.employeeId = employeeId;
        this.salary = salary;
        this.personalTrainerCommision = personalTrainerCommision;
        this.bonus = bonus;
        this.month = month;
        this.year = year;
    }

    public int getSalaryId() {
        return salaryId;
    }

    public void setSalaryId(int salaryId) {
        this.salaryId = salaryId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    public int getPersonalTrainerCommision() {
        return personalTrainerCommision;
    }

    public void setPersonalTrainerCommision(int personalTrainerCommision) {
        this.personalTrainerCommision = personalTrainerCommision;
    }

    public float getBonus() {
        return bonus;
    }

    public void setBonus(float bonus) {
        this.bonus = bonus;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return "salary{" + "salaryId=" + salaryId + ", employeeId=" + employeeId + ", salary=" + salary + ", personalTrainerCommision=" + personalTrainerCommision + ", bonus=" + bonus + ", month=" + month + ", year=" + year + '}';
    }
}
