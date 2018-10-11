/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Salary;
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
public class SalaryDao implements daoInterface<Salary>{
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
    public List<Salary> getAll() {
        String sql = "select * from salary";
        return jdbcTemplate.query(sql, new SalaryMapper());
    }

    @Override
    public Salary get(int id) {
        String sql = "select * from salary where salary_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new SalaryMapper());
    }

    @Override
    public boolean save(Salary salary) {
        String sql = "insert into salary (salary_id, employee_id, salary, personal_trainer_commision, bonus, month, year) values (?, ?, ?, ?, ?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{salary.getSalaryId(), salary.getEmployeeId(), salary.getSalary(), salary.getPersonalTrainerCommision(), salary.getBonus(), salary.getMonth(), salary.getYear()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(Salary salary) {
        String sql = "update salary set employee_id=?, salary=?, personal_trainer_commision=?, bonus=?, month=?, year=? where salary_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{salary.getEmployeeId(), salary.getSalary(), salary.getPersonalTrainerCommision(), salary.getBonus(), salary.getMonth(), salary.getYear(), salary.getSalaryId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from salary where salary_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }
    
    public static class SalaryMapper implements RowMapper<Salary> {

        @Override
        public Salary mapRow(ResultSet rs, int rowNum) throws SQLException {
            Salary salary= new Salary();
            salary.setSalaryId(rs.getInt("salary_id"));
            salary.setEmployeeId(rs.getInt("employee_id"));
            salary.setSalary(rs.getFloat("salary"));
            salary.setPersonalTrainerCommision(rs.getInt("personal_trainer_commision"));
            salary.setBonus(rs.getFloat("bonus"));
            salary.setMonth(rs.getString("month"));
            salary.setYear(rs.getInt("year"));
            return salary;
        }
        
    }
    
    public List<Salary> searchByMonthYear(Salary salary) {
        String sql = "select * from salary where month = ? and year= ?";
        return jdbcTemplate.query(sql, new Object[]{salary.getMonth(), salary.getYear()}, new SalaryMapper());
    }
    
    public int getSalaryStatSalary() {
        String sql = "SELECT sum(salary) from salary";
        return jdbcTemplate.queryForInt(sql);
    }
    
    public int getSalaryStatBonus() {
        String sql = "SELECT sum(bonus) from salary";
        return jdbcTemplate.queryForInt(sql);
    }
    
}
