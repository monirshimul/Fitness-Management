/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.MemberWorkout;
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
public class MemberWorkoutDao implements daoInterface<MemberWorkout>{
    
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
    public List<MemberWorkout> getAll() {
        String sql = "select * from member_workout";
        return jdbcTemplate.query(sql, new MemberWorkoutMapper());
    }

    @Override
    public MemberWorkout get(int id) {
        String sql = "select * from member_workout where member_workout_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MemberWorkoutMapper());
    }

    @Override
    public boolean save(MemberWorkout memberWorkout) {
        String sql = "insert into member_workout (member_workout_id, member_id, day, workout_id, quantity, item_set, item_time, total_calories_burn) values (?, ?, ?, ?, ?, ?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{memberWorkout.getMemberWorkoutId(), memberWorkout.getMemberId(), memberWorkout.getDay(), memberWorkout.getWorkoutId(), memberWorkout.getQuantity(), memberWorkout.getItemSet(), memberWorkout.getItemTime(), memberWorkout.getTotalCaloriesBurn()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(MemberWorkout memberWorkout) {
        String sql = "update member_workout set member_id=?, day=?, workout_id=?, quantity=?, item_set=?, item_time=?, total_calories_burn=? where member_workout_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{memberWorkout.getMemberId(), memberWorkout.getDay(), memberWorkout.getWorkoutId(), memberWorkout.getQuantity(), memberWorkout.getItemSet(), memberWorkout.getItemTime(), memberWorkout.getTotalCaloriesBurn(), memberWorkout.getMemberWorkoutId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from member_workout where member_workout_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }
    
    public static class MemberWorkoutMapper implements RowMapper<MemberWorkout> {        

        @Override
        public MemberWorkout mapRow(ResultSet rs, int rowNum) throws SQLException {
            MemberWorkout memberWorkout= new MemberWorkout();
            memberWorkout.setMemberWorkoutId(rs.getInt("member_workout_id"));
            memberWorkout.setMemberId(rs.getInt("member_id"));
            memberWorkout.setDay(rs.getInt("day"));
            memberWorkout.setWorkoutId(rs.getInt("workout_id"));
            memberWorkout.setQuantity(rs.getInt("quantity"));
            memberWorkout.setItemSet(rs.getInt("item_set"));
            memberWorkout.setItemTime(rs.getInt("item_time"));
            memberWorkout.setTotalCaloriesBurn(rs.getDouble("total_calories_burn"));
            return memberWorkout;
        }
    }
    
    public List<MemberWorkout> getMemberWorkoutByMemberId(int id) {
        String sql = "select * from member_workout where member_id= ?";
        return jdbcTemplate.query(sql, new Object[]{id}, new MemberWorkoutMapper());
    }
    
}
