package native_jdbc_programing.dao;

import java.util.List;

import native_jdbc_programing.dto.Department;

public interface DepartmentDao {
	List<Department> selectDepartmentByAll();
	Department selectDepartmentBydeptNo(Department dept);
	
	int insertDepartment(Department dept);
	int updateDepartment(Department dept);
	int deleteDepartment(int dept);
	int deleteDepartment(Department dept);
	
}
