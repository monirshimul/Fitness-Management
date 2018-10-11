/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.MonthlyExpense;
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
 * @author momen
 */
@Repository
public class MonthlyExpenseDao implements daoInterface<MonthlyExpense> {
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
    public List<MonthlyExpense> getAll() {
        String sql = "select * from monthly_expense";
        return jdbcTemplate.query(sql, new MonthlyExpenseMapper());
    }

    @Override
    public MonthlyExpense get(int id) {
        String sql = "select * from monthly_expense where monthly_expense_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MonthlyExpenseMapper());
    }

    public static class MonthlyExpenseMapper implements RowMapper<MonthlyExpense> {

        @Override
        public MonthlyExpense mapRow(ResultSet rs, int i) throws SQLException {
            MonthlyExpense me = new MonthlyExpense();
            me.setMonthlyExpenseId(rs.getInt("monthly_expense_id"));
            me.setFloorRent(rs.getFloat("floor_rent"));
            me.setElectricityBill(rs.getFloat("electricity_bill"));
            me.setWaterBill(rs.getFloat("water_bill"));
            me.setMonth(rs.getString("month"));
            me.setYear(rs.getInt("year"));

            return me;
        }

    }
 
     

    @Override
    public boolean save(MonthlyExpense me) {
        String sql = "insert into monthly_expense(monthly_expense_id,floor_rent,electricity_bill,water_bill,month,year) values(?,?,?,?,?,?)";

        int value = jdbcTemplate.update(sql, new Object[]{me.getMonthlyExpenseId(),me.getFloorRent(), me.getElectricityBill(), me.getWaterBill(), me.getMonth(), me.getYear()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean update(MonthlyExpense me) {
        String sql = "update monthly_expense set floor_rent=?,electricity_bill=?,water_bill=?,month=?,year=? where monthly_expense_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{me.getFloorRent(), me.getElectricityBill(), me.getWaterBill(), me.getMonth(), me.getYear(), me.getMonthlyExpenseId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from monthly_expense where monthly_expense_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    public int getMonthlyExpenseFloorRent() {
        String sql = "select sum(floor_rent) from monthly_expense";
        return jdbcTemplate.queryForInt(sql);
    }
    
    public int getMonthlyExpenseElectricityBil() {
        String sql = "select sum(electricity_bill) from monthly_expense";
        return jdbcTemplate.queryForInt(sql);
    }
    
    public int getMonthlyExpenseWaterBill() {
        String sql = "select sum(water_bill) from monthly_expense";
        return jdbcTemplate.queryForInt(sql);
    }
}
