/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Food;
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
 * @author Muiduzzaman Lipu
 */
@Repository
public class FoodDao implements daoInterface<Food>{
    
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

    @Override
    public List<Food> getAll() {
        String sql = "select * from food";
        return jdbcTemplate.query(sql, new FoodMapper());
    }

    @Override
    public Food get(int id) {
        String sql = "select * from food where food_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new FoodMapper());
    }

    @Override
    public boolean save(Food food) {
        String sql = "insert into food (food_name, quantity, calorie) values (?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{food.getFoodName(), food.getQuantity(), food.getCalorie()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(Food food) {
        String sql = "update food set food_name=?, quantity=?, calorie=? where food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{food.getFoodName(), food.getQuantity(), food.getCalorie(), food.getFoodId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from food where food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }
    
    public static class FoodMapper implements RowMapper<Food> {

        @Override
        public Food mapRow(ResultSet rs, int rowNum) throws SQLException {
            Food f = new Food();
            f.setFoodId(rs.getInt("food_id"));
            f.setFoodName(rs.getString("food_name"));
            f.setQuantity(rs.getInt("quantity"));
            f.setCalorie(rs.getInt("calorie"));
            return f;
        }
        
    }
    
}
