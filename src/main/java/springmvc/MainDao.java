package springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class MainDao {
	
	JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		  this.jdbcTemplate = jdbcTemplate;
	 }
	
	public int saveUser(RegModel rm) {
		String sql = "insert into regtable1(id,name, email,password,mobile,city,gender,course) values('"+rm.getId()+"','"+rm.getName()+"','"+rm.getEmail()+"','"+rm.getPassword()+"','"+rm.getMobile()+"','"+rm.getCity()+"','"+rm.getGender()+"','"+rm.getCourse()+"')";
	   return jdbcTemplate.update(sql);
	}
	
	public List<RegModel> login(LogModel lm){
		String sql= "select * from regtable1 where email= '"+lm.getEmail()+"' and password= '"+lm.getPassword()+"'";
		List<RegModel>list= jdbcTemplate.query(sql, new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				RegModel rm= new RegModel();
				rm.setEmail(rs.getString("email"));
				rm.setPassword(rs.getString("password"));
				return rm;
			}	
		});
		List<RegModel> list1 = list.size()>0 ? list:null;
		return list1;
	}
	
	
	public List<RegModel>getUser(){
		String sql ="select * from regtable1";
		return jdbcTemplate.query(sql, new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				RegModel rm= new RegModel();
				rm.setId(rs.getInt("id"));
				rm.setName(rs.getString("name"));
				rm.setEmail(rs.getString("email"));
				rm.setMobile(rs.getString("mobile"));
				
				return rm;
			}
			
		});
	}
	
	public List<RegModel>getUserById(int id){
		String sql="select * from regtable1 where id='"+id+"'";
		return jdbcTemplate.query(sql,new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				RegModel rm=new RegModel();
				rm.setId(rs.getInt(1));
				rm.setName(rs.getString("name"));
				rm.setCity(rs.getString("city"));
				rm.setCourse(rs.getString("course"));
				rm.setEmail(rs.getString("email"));
				rm.setPassword(rs.getString("password"));
				rm.setMobile(rs.getString("mobile"));
				rm.setGender(rs.getString("gender"));
				return rm;
			}
		});
	}
	
	//update
	public int getUpdateData(RegModel rm) {
		  String sql = "update regtable1 set name='"+rm.getName()+"',email='"+rm.getEmail()+"',city='"+rm.getCity()+"',password='"+rm.getPassword()+"',gender='"+rm.getGender()+"',mobile='"+rm.getMobile()+"',course='"+rm.getCourse()+"' where id='"+rm.getId()+"'";
		  return jdbcTemplate.update(sql);
		 }
	
	public int delete(int id){
		String sql="delete from regtable1 where id='"+id+"'";
		return jdbcTemplate.update(sql);
	}
	

}
