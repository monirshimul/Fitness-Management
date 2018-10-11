/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;



import ac.dia.pojo.Workout;
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
public class WorkoutDao {
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
    public List<Workout>getAllWorkout(){
         String sql="select * from workout";
        return jdbcTemplate.query(sql, new WorkoutDao.workoutMapper());
    
    }
     public Workout getWorkout(int id){
       String sql="select * from workout where workout_id=?"; 
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new workoutMapper());
    
    }
    
    
    public static class workoutMapper implements RowMapper<Workout>{

        @Override
        public Workout mapRow(ResultSet rs, int rowNum) throws SQLException {
            Workout out=new Workout();
            
          out.setWorkoutId(rs.getInt("workout_id"));
          out.setWorkoutName(rs.getString("workout_name"));
           out.setCalorieBurn(rs.getDouble("calorie_burn"));
            return out;
        }
    }
    
     public boolean saveWorkout( Workout out){
       String sql="insert into  workout (workout_id,workout_name,calorie_burn)value(?,?,?)";
       int value=jdbcTemplate.update(sql,new Object[]{out.getWorkoutId(),out.getWorkoutName(),out.getCalorieBurn()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
     
      public boolean updateWorkout( Workout out){ 
         
      String sql = "update  workout set  workout_name=?,calorie_burn=? where workout_id=?";
       int value=jdbcTemplate.update(sql,new Object[]{out.getWorkoutName(),out.getCalorieBurn(),out.getWorkoutId()});
  if(value>0){
      return true;
  }else{
      return false;
  }
   
   }
      
       public boolean deleteWorkout(int id){ 
  String sql="delete from workout where workout_id=?"; 
    int value= jdbcTemplate.update(sql, new Object[]{id});
       if(value>0){
      return true;
  }else{
      return false;
  }
   }
    
}
