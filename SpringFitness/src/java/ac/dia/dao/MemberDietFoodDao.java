/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.MemberDietFood;
import ac.dia.pojo.MemberFood;
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
 * @author Monir
 */
@Repository
public class MemberDietFoodDao implements daoInterface<MemberDietFood>{
    
    
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
    public List<MemberDietFood> getAll() {
       String sql = "select * from member_diet_food";
        return jdbcTemplate.query(sql, new MemberDietFoodDao.MemberDietFoodMapper());  
    }

    @Override
    public MemberDietFood get(int id) {
         String sql = "select * from member_diet_food where member_diet_food_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MemberDietFoodDao.MemberDietFoodMapper());
    }

    @Override
    public boolean save(MemberDietFood memberDietFood) {
        String sql = "insert into member_diet_food (member_diet_food_id, member_id, date, shift, diet_food_id, quantity, total_calories) values (?, ?, ?, ?, ?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{memberDietFood.getMemberDietFoodId(),memberDietFood.getMemberId(), memberDietFood.getDate(), memberDietFood.getShift(), 
            memberDietFood.getDietFoodId(), memberDietFood.getQuantity(), memberDietFood.getTotalCalories()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(MemberDietFood memberDietFood) {
        String sql = "update member_diet_food set member_diet_food_id=?,member_id=?, date=?, shift=?, diet_food_id=?, quantity=?, total_calories=? where member_diet_food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{memberDietFood.getMemberDietFoodId(),memberDietFood.getMemberId(), memberDietFood.getDate(), memberDietFood.getShift(), 
            memberDietFood.getDietFoodId(), memberDietFood.getQuantity(), memberDietFood.getTotalCalories(), memberDietFood.getMemberDietFoodId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from member_diet_food where member_diet_food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }
    
    
    
    public static class MemberDietFoodMapper implements RowMapper<MemberDietFood> {

            

        @Override
        public MemberDietFood mapRow(ResultSet rs, int rowNum) throws SQLException {
            MemberDietFood memberDietFood = new MemberDietFood();
            memberDietFood.setMemberDietFoodId(rs.getInt("member_diet_food_id"));
            memberDietFood.setMemberId(rs.getInt("member_id"));
            memberDietFood.setDate(rs.getInt("date"));
            memberDietFood.setShift(rs.getString("shift"));
            memberDietFood.setDietFoodId(rs.getInt("diet_food_id"));
            memberDietFood.setQuantity(rs.getInt("quantity"));
            memberDietFood.setTotalCalories(rs.getDouble("total_calories"));
            return memberDietFood;
        }
    }
    
    public List<MemberDietFood> getMemberDietFoodBy (int id) {
       String sql = "select * from member_diet_food where member_id = ?";
        return jdbcTemplate.query(sql, new Object[]{id}, new MemberDietFoodDao.MemberDietFoodMapper());  
    }
    
    
}
