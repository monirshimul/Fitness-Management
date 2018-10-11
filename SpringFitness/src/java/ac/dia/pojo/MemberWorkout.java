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
public class MemberWorkout {
    private int memberWorkoutId;
    private int memberId;
    private int day;
    private int workoutId;
    private int quantity;
    private int itemSet;
    private int itemTime;
    private double totalCaloriesBurn;

    public MemberWorkout() {
    }

    public MemberWorkout(int memberWorkoutId, int memberId, int day, int workoutId, int quantity, int itemSet, int itemTime, double totalCaloriesBurn) {
        this.memberWorkoutId = memberWorkoutId;
        this.memberId = memberId;
        this.day = day;
        this.workoutId = workoutId;
        this.quantity = quantity;
        this.itemSet = itemSet;
        this.itemTime = itemTime;
        this.totalCaloriesBurn = totalCaloriesBurn;
    }

    public int getMemberWorkoutId() {
        return memberWorkoutId;
    }

    public void setMemberWorkoutId(int memberWorkoutId) {
        this.memberWorkoutId = memberWorkoutId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getWorkoutId() {
        return workoutId;
    }

    public void setWorkoutId(int workoutId) {
        this.workoutId = workoutId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getItemSet() {
        return itemSet;
    }

    public void setItemSet(int itemSet) {
        this.itemSet = itemSet;
    }

    public int getItemTime() {
        return itemTime;
    }

    public void setItemTime(int itemTime) {
        this.itemTime = itemTime;
    }

    public double getTotalCaloriesBurn() {
        return totalCaloriesBurn;
    }

    public void setTotalCaloriesBurn(double totalCaloriesBurn) {
        this.totalCaloriesBurn = totalCaloriesBurn;
    }

    @Override
    public String toString() {
        return "MemberWorkout{" + "memberWorkoutId=" + memberWorkoutId + ", memberId=" + memberId + ", day=" + day + ", workoutId=" + workoutId + ", quantity=" + quantity + ", itemSet=" + itemSet + ", itemTime=" + itemTime + ", totalCaloriesBurn=" + totalCaloriesBurn + '}';
    }
}
