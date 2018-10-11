/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import ac.dia.pojo.TrailMember;
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
public class TrailMemberDao {
    
    
     private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public DataSource getDataSource() {
        return dataSource;
    }
    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate=new JdbcTemplate(dataSource);
    }
    
    
     public List< TrailMember>getAllTrailMember(){
         String sql="select * from trail_member";
        return jdbcTemplate.query(sql, new TrailMemberDao.trailMemberMapper());
    
    }
     public TrailMember getTrailMember(int id){
       String sql="select * from trail_member where trail_member_id=?"; 
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new trailMemberMapper());
    
    }
    
    
    public static class trailMemberMapper implements RowMapper<TrailMember>{

        @Override
        public TrailMember mapRow(ResultSet rs, int rowNum) throws SQLException {
          TrailMember tm=new TrailMember();
            
         tm.setTrailMemberId(rs.getInt("trail_member_id"));
          tm.setTrailMemberName(rs.getString("trail_member_name"));
          tm.setPhone(rs.getString("phone"));
          tm.setEmail(rs.getString("email"));
            return tm;
        }
    }
    
     public boolean saveTrailMember( TrailMember tm){
       String sql="insert into  trail_member (trail_member_name,phone, email)value(?,?,?)";
       int value=jdbcTemplate.update(sql,new Object[]{tm.getTrailMemberName(),tm.getPhone(),tm.getEmail()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
    
    
     public boolean updateTrailMember( TrailMember tm){ 
         
      String sql = "update  trail_member set trail_member_name=?,phone=?, email=? where trail_member_id=?";
       int value=jdbcTemplate.update(sql,new Object[]{tm.getTrailMemberName(),tm.getPhone(),tm.getEmail(),tm.getTrailMemberId()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
     public boolean deleteTrailMember(int id){ 
  String sql="delete from trail_member where trail_member_id=?"; 
    int value= jdbcTemplate.update(sql, new Object[]{id});
       if(value>0){
      return true;
  }else{
      return false;
  }
   }
    
    
}
