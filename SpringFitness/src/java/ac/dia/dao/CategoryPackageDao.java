/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.CategoryPackage;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Benzir
 */
@Repository
public class CategoryPackageDao {
    
    
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public DataSource getDataSource() {
        return dataSource;
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    public List<CategoryPackage> getAllCategoryPackage() {
        String sql = "select * from category_package";
        return jdbcTemplate.query(sql, new CategoryPackageMapper());

    }

    public CategoryPackage getCategoryPackage(int id) {
        String sql = "select * from category_package where category_package_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new CategoryPackageMapper());
    }
    
     public static class CategoryPackageMapper implements RowMapper<CategoryPackage> {

        @Override
        public CategoryPackage mapRow(ResultSet rs, int i) throws SQLException {
            
           CategoryPackage cp=new CategoryPackage();
          cp.setCategoryPackageId(rs.getInt("category_package_id"));
          cp.setCategoryName(rs.getString("category_name"));
          cp.setPackageName(rs.getString("package_name"));
          cp.setPrice(rs.getString("price"));
          cp.setDuration(rs.getString("duration"));
         return cp;
        }

      

      
    }
     
      public boolean saveCategoryPackage(CategoryPackage categoryPackage) {
        String sql = "insert into category_package (category_name,package_name,price,duration) values(?,?,?,?)";

        int value = jdbcTemplate.update(sql, new Object[]{categoryPackage.getCategoryName(),categoryPackage.getPackageName(),categoryPackage.getPrice(),categoryPackage.getDuration()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }
      
        public boolean updateCategoryPackage(CategoryPackage categoryPackage) {
        String sql = "update category_package set Category_name=?,package_name=?,price=?,duration=?  where category_package_id=?";
              
        int value = jdbcTemplate.update(sql, new Object[]{categoryPackage.getCategoryName(),categoryPackage.getPackageName(),categoryPackage.getPrice(),categoryPackage.getDuration(),categoryPackage.getCategoryPackageId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }
           public boolean deleteCategoryPackage(int id) {
        String sql = "delete from category_package where category_package_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
      
    
    
}
