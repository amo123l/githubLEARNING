package com.callcenter.dao;

import java.sql.Connection;

public interface DBUtil {
	
	public  Connection getConnection()throws Exception;

}
