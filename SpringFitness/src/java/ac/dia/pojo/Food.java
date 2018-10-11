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
public class Food {
    private int foodId;
    private String foodName;
    private int quantity;
    private float calorie;

    public Food() {
    }

    public Food(int foodId, String foodName, int quantity, float calorie) {
        this.foodId = foodId;
        this.foodName = foodName;
        this.quantity = quantity;
        this.calorie = calorie;
    }

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getCalorie() {
        return calorie;
    }

    public void setCalorie(float calorie) {
        this.calorie = calorie;
    }

    @Override
    public String toString() {
        return "food{" + "foodId=" + foodId + ", foodName=" + foodName + ", quantity=" + quantity + ", calorie=" + calorie + '}';
    }
}
