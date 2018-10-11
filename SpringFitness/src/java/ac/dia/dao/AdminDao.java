/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Admin;
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
public class AdminDao {

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

    public List<Admin> getAllAdmin() {
        String sql = "select * from admin";
        return jdbcTemplate.query(sql, new AdminMapper());

    }

    public Admin getAdmin(int id) {
        String sql = "select * from admin where admin_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new AdminMapper());
    }

    public static class AdminMapper implements RowMapper<Admin> {

        @Override
        public Admin mapRow(ResultSet rs, int i) throws SQLException {

            Admin a = new Admin();
            a.setAdminId(rs.getInt("admin_id"));
            a.setName(rs.getString("name"));
            a.setPassword(rs.getString("password"));
            a.setRole(rs.getString("role"));
            return a;
        }

    }

    public boolean saveAdmin(Admin admin) {
        String sql = "insert into admin (name,password,role) values(?,?,?)";

        int value = jdbcTemplate.update(sql, new Object[]{admin.getName(), admin.getPassword(), admin.getRole()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }

    public boolean updateAdmin(Admin admin) {
        String sql = "update admin set name=?,password=?,role=? where admin_id=?";

        int value = jdbcTemplate.update(sql, new Object[]{admin.getName(), admin.getPassword(), admin.getRole(), admin.getAdminId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }

    public boolean deleteAdmin(int id) {
        String sql = "delete from admin where admin_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    public int getTotalAdmin() {
        String sql = "select count(admin_id) from admin";
        return jdbcTemplate.queryForInt(sql);
    }
    
    public Admin checkLoginAdmin(Admin admin) {
        String sql = "select * from admin where name=? and password=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{admin.getName(), admin.getPassword()}, new AdminMapper());
    }

}
