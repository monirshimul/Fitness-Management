/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Instructor;
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
public class MemberFoodDao implements daoInterface<MemberFood> {

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
    public List<MemberFood> getAll() {
        String sql = "select * from member_food";
        return jdbcTemplate.query(sql, new MemberFoodDao.MemberFoodMapper());
    }

    @Override
    public MemberFood get(int id) {
        String sql = "select * from member_food where member_food_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MemberFoodDao.MemberFoodMapper());
    }

    @Override
    public boolean save(MemberFood memberFood) {
        String sql = "insert into member_food (member_id, day, food_id,quantity,total_calories) values (?, ?, ?, ?,?)";
        int value = jdbcTemplate.update(sql, new Object[]{memberFood.getMemberId(), memberFood.getDay(), memberFood.getFoodId(), memberFood.getQuantity(), memberFood.getTotalCalories()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(MemberFood memberFood) {
        String sql = "update member_food set member_id=?, day=?, food_id=?, quantity=?, total_calories=? where member_food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{memberFood.getMemberId(), memberFood.getDay(), memberFood.getFoodId(), memberFood.getQuantity(), memberFood.getTotalCalories(), memberFood.getMemberFoodId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from member_food where member_food_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }

    public static class MemberFoodMapper implements RowMapper<MemberFood> {

        @Override
        public MemberFood mapRow(ResultSet rs, int rowNum) throws SQLException {
            MemberFood memberFood = new MemberFood();
            memberFood.setMemberFoodId(rs.getInt("member_food_id"));
            memberFood.setMemberId(rs.getInt("member_id"));
            memberFood.setDay(rs.getString("day"));
            memberFood.setFoodId(rs.getInt("food_id"));
            memberFood.setQuantity(rs.getInt("quantity"));
            memberFood.setTotalCalories(rs.getFloat("total_calories"));
            return memberFood;
        }
    }
    
    
    public int getTotalMemberFood() {
        String sql = "select count(member_food_id) from member_food";
        return jdbcTemplate.queryForInt(sql);
    }

}
