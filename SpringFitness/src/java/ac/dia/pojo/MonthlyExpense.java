/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author momen
 */
public class MonthlyExpense {

    private int monthlyExpenseId;
    private float floorRent;
    private float electricityBill;
    private float waterBill;
    private String month;
    private int year;

    public MonthlyExpense() {
    }

    public MonthlyExpense(int monthlyExpenseId, float floorRent, float electricityBill, float waterBill, String month, int year) {
        this.monthlyExpenseId = monthlyExpenseId;
        this.floorRent = floorRent;
        this.electricityBill = electricityBill;
        this.waterBill = waterBill;
        this.month = month;
        this.year = year;
    }

    public int getMonthlyExpenseId() {
        return monthlyExpenseId;
    }

    public void setMonthlyExpenseId(int monthlyExpenseId) {
        this.monthlyExpenseId = monthlyExpenseId;
    }

    public float getFloorRent() {
        return floorRent;
    }

    public void setFloorRent(float floorRent) {
        this.floorRent = floorRent;
    }

    public float getElectricityBill() {
        return electricityBill;
    }

    public void setElectricityBill(float electricityBill) {
        this.electricityBill = electricityBill;
    }

    public float getWaterBill() {
        return waterBill;
    }

    public void setWaterBill(float waterBill) {
        this.waterBill = waterBill;
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
        return "MonthlyExpense{" + "monthlyExpenseId=" + monthlyExpenseId + ", floorRent=" + floorRent + ", electricityBill=" + electricityBill + ", waterBill=" + waterBill + ", month=" + month + ", year=" + year + '}';
    }

    
    
}
