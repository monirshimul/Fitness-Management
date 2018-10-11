/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.Member;
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
public class MemberDao  {

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

    public List<Member> getAllMember() {
        String sql = "select * from member";
        return jdbcTemplate.query(sql, new MemberMapper());

    }

    public Member getMember(int id) {
        String sql = "select * from member where member_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new MemberMapper());
    }

    public static class MemberMapper implements RowMapper<Member> {

        @Override
        public Member mapRow(ResultSet rs, int i) throws SQLException {
            Member m = new Member();
            m.setMemberId(rs.getInt("member_id"));
            m.setMemberName(rs.getString("member_name"));
            
            m.setPassword(rs.getString("password"));
            m.setFirstName(rs.getString("first_name"));
            m.setLastName(rs.getString("last_name"));
            m.setPhoto(rs.getString("photo"));
            m.setGender(rs.getString("gender"));
            m.setHeight(rs.getString("height"));
            m.setWeight(rs.getString("weight"));
            m.setBloodGroup(rs.getString("blood_group"));
            m.setNidNo(rs.getString("nid_no"));
            m.setAddress(rs.getString("address"));
            m.setPhone(rs.getString("phone"));
            m.setEmail(rs.getString("email"));
            m.setJoiningDate(rs.getString("joining_date"));
            m.setInstructorId(rs.getInt("instructor_id"));
            m.setCategoryPackageId(rs.getInt("category_package_id"));
            m.setPersonalTrainer(rs.getString("personal_trainer"));
            

            





            

            return m;
        }

    }
    
    
    
    
    public boolean saveMember(Member member){
    
        String sql = "insert into member (member_name,password"
                + ",photo,gender,height,weight,blood_group,nid_no,address,phone,email"
                + ",instructor_id,category_package_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        int value = jdbcTemplate.update(sql, new Object[]{member.getMemberName(),member.getPassword(),
        member.getPhoto(),member.getGender(),member.getHeight(),member.getWeight(),member.getBloodGroup(),member.getNidNo(),member.getAddress(),
        member.getPhone(),member.getEmail(),
        member.getInstructorId(),member.getCategoryPackageId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    
    }
    
    
    
    public boolean updateMember(Member member) {
        String sql = "update member set member_name=?,password=?,photo=?,gender=?,height=?,weight=?,blood_group=?,nid_no=?,address=?,phone=?,email=?,"
                + "instructor_id=?,category_package_id=? where member_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{member.getMemberName(),member.getPassword(),
        member.getPhoto(),member.getGender(),member.getHeight(),member.getWeight(),member.getBloodGroup(),member.getNidNo(),member.getAddress(),
        member.getPhone(),member.getEmail(),
        member.getInstructorId(),member.getCategoryPackageId(), member.getMemberId()});
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }    
    
    public boolean deleteMember(int id) {
        String sql = "delete from member where member_id=?";
        int value = jdbcTemplate.update(sql, new Object[]{id});
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    public int getTotalMember() {
        String sql = "select count(member_id) from member";
        return jdbcTemplate.queryForInt(sql);

    }
    
    public Member checkLoginMember(Member member) {
        String sql = "select * from member where member_name=? and password=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{member.getMemberName(),member.getPassword()}, new MemberMapper());
    }

}
