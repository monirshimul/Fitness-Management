/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.DietFood;
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
 * @author Administrator
 */
@Repository
public class DietFoodDao {
    
    
     private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public DataSource getDataSource() {
        return dataSource;
    }
    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate=new JdbcTemplate(dataSource);
    }
    
     public List<DietFood>getAllDietFood(){
         String sql="select * from diet_food";
        return jdbcTemplate.query(sql, new dietFoodMapper());
    
    }
     public DietFood getDietFood(int id){
       String sql="select * from diet_food where diet_food_id=?"; 
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new dietFoodMapper());
    
    }
    
    
    public static class dietFoodMapper implements RowMapper<DietFood>{

        @Override
        public DietFood mapRow(ResultSet rs, int rowNum) throws SQLException {
           DietFood df=new DietFood();
            
         df.setDietFoodId(rs.getInt("diet_food_id"));
          df.setDietFoodName(rs.getString("diet_food_name"));
          df.setCalorie(rs.getInt("calorie"));
            return df;
        }
    }
    public boolean saveDietFood( DietFood df){
       String sql="insert into  diet_food (diet_food_id,diet_food_name,calorie)value(?,?,?)";
       int value=jdbcTemplate.update(sql,new Object[]{df.getDietFoodId(),df.getDietFoodName(),df.getCalorie()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
    
    
     public boolean updateDietFood( DietFood df){ 
         
      String sql = "update  diet_food set  diet_food_name=?,calorie=? where diet_food_id=?";
       int value=jdbcTemplate.update(sql,new Object[]{df.getDietFoodName(),df.getCalorie(),df.getDietFoodId()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
     public boolean deleteDietFood(int id){ 
  String sql="delete from diet_food where diet_food_id=?"; 
    int value= jdbcTemplate.update(sql, new Object[]{id});
       if(value>0){
      return true;
  }else{
      return false;
  }
   }
    
}
