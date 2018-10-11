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
public class MemberFood {
    
    private int memberFoodId;
    private int memberId;
    private String day;
    private int foodId;
    private int quantity;
    private float totalCalories;

    public int getMemberFoodId() {
        return memberFoodId;
    }

    public void setMemberFoodId(int memberFoodId) {
        this.memberFoodId = memberFoodId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotalCalories() {
        return totalCalories;
    }

    public void setTotalCalories(float totalCalories) {
        this.totalCalories = totalCalories;
    }

    public MemberFood() {
    }

    public MemberFood(int memberFoodId, int memberId, String day, int foodId, int quantity, float totalCalories) {
        this.memberFoodId = memberFoodId;
        this.memberId = memberId;
        this.day = day;
        this.foodId = foodId;
        this.quantity = quantity;
        this.totalCalories = totalCalories;
    }

    @Override
    public String toString() {
        return "MemberFood{" + "memberFoodId=" + memberFoodId + ", memberId=" + memberId + ", day=" + day + ", foodId=" + foodId + ", quantity=" + quantity + ", totalCalories=" + totalCalories + '}';
    }
    
    
    
    
    
}
