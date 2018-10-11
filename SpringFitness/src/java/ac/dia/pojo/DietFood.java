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
public class DietFood {
    private int  dietFoodId;
    private String dietFoodName;
    private int calorie;

    public DietFood() {
    }

    public DietFood(int dietFoodId, String dietFoodName, int calorie) {
        this.dietFoodId = dietFoodId;
        this.dietFoodName = dietFoodName;
        this.calorie = calorie;
    }

    public int getDietFoodId() {
        return dietFoodId;
    }

    public void setDietFoodId(int dietFoodId) {
        this.dietFoodId = dietFoodId;
    }

    public String getDietFoodName() {
        return dietFoodName;
    }

    public void setDietFoodName(String dietFoodName) {
        this.dietFoodName = dietFoodName;
    }

    public int getCalorie() {
        return calorie;
    }

    public void setCalorie(int calorie) {
        this.calorie = calorie;
    }

    @Override
    public String toString() {
        return "DietFood{" + "dietFoodId=" + dietFoodId + ", dietFoodName=" + dietFoodName + ", calorie=" + calorie + '}';
    }
    
    
}
