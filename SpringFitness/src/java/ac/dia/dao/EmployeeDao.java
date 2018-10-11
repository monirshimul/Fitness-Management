/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Employee;
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
public class EmployeeDao {

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

    public List<Employee> getAllEmployee() {
        String sql = "select * from employee";
        return jdbcTemplate.query(sql, new EmployeeMapper());

    }

    public Employee getEmployee(int id) {
        String sql = "select * from employee where employee_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new EmployeeMapper());
    }

    public static class EmployeeMapper implements RowMapper<Employee> {

        @Override
        public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
            Employee e = new Employee();
            e.setEmployeeId(rs.getInt("employee_id"));
            e.setEmployeeName(rs.getString("employee_name"));
            e.setPhoto(rs.getString("photo"));
            e.setPassword(rs.getString("password"));
            e.setRole(rs.getString("role"));
            e.setGender(rs.getString("gender"));
            e.setPhone(rs.getString("phone"));
            e.setEmail(rs.getString("email"));
            e.setAddress(rs.getString("address"));
            e.setSalary(rs.getInt("salary"));
            e.setActive(rs.getBoolean("active"));

            return e;
        }
    }

    public boolean saveEmployee(Employee employee) {
        String sql = "insert into employee (employee_name,photo,password,role,gender,phone,email,address,salary,active) values(?,?,?,?,?,?,?,?,?,?)";

        int value = jdbcTemplate.update(sql, new Object[]{employee.getEmployeeName(), employee.getPhoto(), employee.getPassword(),
            employee.getRole(), employee.getGender(), employee.getPhone(), employee.getEmail(), employee.getAddress(), employee.getSalary(), true});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }

    public boolean updateEmployee(Employee employee) {
        String sql = "update employee set employee_name=?,photo=?,password=?,role=?,gender=?,phone=?,email=?,address=?,"
                + "salary=?,active=? where employee_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{employee.getEmployeeName(), employee.getPhoto(), employee.getPassword(),
            employee.getRole(), employee.getGender(), employee.getPhone(), employee.getEmail(), employee.getAddress(), employee.getSalary(), employee.isActive(), employee.getEmployeeId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }

    public boolean deleteEmployee(int id) {
        String sql = "delete from employee where employee_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public int getTotalEmployee() {
        String sql = "select count(employee_id) from employee";
        return jdbcTemplate.queryForInt(sql);
    }

}
