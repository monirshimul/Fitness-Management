/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Instructor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javafx.scene.AccessibleAttribute;
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
public class InstructorDao implements daoInterface<Instructor>{
    
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
    public List<Instructor> getAll() {
        String sql = "select * from instructor";
        return jdbcTemplate.query(sql, new InstructorMapper());
    }

    @Override
    public Instructor get(int id) {
        String sql = "select * from instructor where instructor_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new InstructorMapper());
    }

    @Override
    public boolean save(Instructor instructor) {
        String sql = "insert into instructor (employee_id, category_package_id, personal_instructor_rate, shift) values (?, ?, ?, ?)";
        int value = jdbcTemplate.update(sql, new Object[]{instructor.getEmployeeId(), instructor.getCategoryPackageId(), instructor.getPersonalInstructorRate(), instructor.getShift()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean update(Instructor instructor) {
        String sql = "update instructor set employee_id=?, category_package_id=?, personal_instructor_rate=?, shift=? where instructor_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{instructor.getEmployeeId(), instructor.getCategoryPackageId(), instructor.getPersonalInstructorRate(), instructor.getShift(), instructor.getInstructorId()});
        if (value > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from instructor where instructor_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        }
        return false;
    }
    
    public static class InstructorMapper implements RowMapper<Instructor> {

        @Override
        public Instructor mapRow(ResultSet rs, int rowNum) throws SQLException {
            Instructor instructor= new Instructor();
            instructor.setInstructorId(rs.getInt("instructor_id"));
            instructor.setEmployeeId(rs.getInt("employee_id"));
            instructor.setCategoryPackageId(rs.getInt("category_package_id"));
            instructor.setPersonalInstructorRate(rs.getInt("personal_instructor_rate"));
            instructor.setShift(rs.getString("shift"));
            return instructor;
        }        
    }
    
    public int getTotalInstructor() {
        String sql = "select count(instructor_id) from instructor";
        return jdbcTemplate.queryForInt(sql);
    }
    
}
