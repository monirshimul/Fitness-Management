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
public class Workout {
    
    private int workoutId;
    private String workoutName;
    private double calorieBurn;

    public Workout() {
    }

    public Workout(int workoutId, String workoutName, double calorieBurn) {
        this.workoutId = workoutId;
        this.workoutName = workoutName;
        this.calorieBurn = calorieBurn;
    }

    public int getWorkoutId() {
        return workoutId;
    }

    public void setWorkoutId(int workoutId) {
        this.workoutId = workoutId;
    }

    public String getWorkoutName() {
        return workoutName;
    }

    public void setWorkoutName(String workoutName) {
        this.workoutName = workoutName;
    }

    public double getCalorieBurn() {
        return calorieBurn;
    }

    public void setCalorieBurn(double calorieBurn) {
        this.calorieBurn = calorieBurn;
    }

    @Override
    public String toString() {
        return "Workout{" + "workoutId=" + workoutId + ", workoutName=" + workoutName + ", calorieBurn=" + calorieBurn + '}';
    }
}
