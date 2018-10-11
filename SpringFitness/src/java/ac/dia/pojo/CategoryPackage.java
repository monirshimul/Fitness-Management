/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.pojo;

/**
 *
 * @author Benzir
 */

public class CategoryPackage {
  
    private int categoryPackageId;
    private String categoryName;
    private String packageName;
    private String price;
    private String duration;

    public CategoryPackage() {
    }

    public CategoryPackage(int categoryPackageId, String categoryName, String packageName, String price, String duration) {
        this.categoryPackageId = categoryPackageId;
        this.categoryName = categoryName;
        this.packageName = packageName;
        this.price = price;
        this.duration = duration;
    }

    public int getCategoryPackageId() {
        return categoryPackageId;
    }

    public void setCategoryPackageId(int categoryPackageId) {
        this.categoryPackageId = categoryPackageId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "CategoryPackage{" + "categoryPackageId=" + categoryPackageId + ", categoryName=" + categoryName + ", packageName=" + packageName + ", price=" + price + ", duration=" + duration + '}';
    }
    
    
    
    
    
}
