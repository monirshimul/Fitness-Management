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
public class MemberDietFood {
    
    private int memberDietFoodId;
    private int memberId;
    private int date;
    private String shift;
    private int dietFoodId;
    private int quantity;
    private double totalCalories;

    public int getMemberDietFoodId() {
        return memberDietFoodId;
    }

    public void setMemberDietFoodId(int memberDietFoodId) {
        this.memberDietFoodId = memberDietFoodId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public int getDietFoodId() {
        return dietFoodId;
    }

    public void setDietFoodId(int dietFoodId) {
        this.dietFoodId = dietFoodId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalCalories() {
        return totalCalories;
    }

    public void setTotalCalories(double totalCalories) {
        this.totalCalories = totalCalories;
    }

    public MemberDietFood() {
    }

    public MemberDietFood(int memberDietFoodId, int memberId, int date, String shift, int dietFoodId, int quantity, double totalCalories) {
        this.memberDietFoodId = memberDietFoodId;
        this.memberId = memberId;
        this.date = date;
        this.shift = shift;
        this.dietFoodId = dietFoodId;
        this.quantity = quantity;
        this.totalCalories = totalCalories;
    }

    @Override
    public String toString() {
        return "MemberDietFood{" + "memberDietFoodId=" + memberDietFoodId + ", memberId=" + memberId + ", date=" + date + ", shift=" + shift + ", dietFoodId=" + dietFoodId + ", quantity=" + quantity + ", totalCalories=" + totalCalories + '}';
    }
    
    
    
    
    
}
