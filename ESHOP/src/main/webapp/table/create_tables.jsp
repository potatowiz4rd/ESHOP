<%@ page import="project.ConnectionProvider"%>"
<%@ page import="java.sql.*"%>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,phoneNumber bigint,password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table products(id int, name varchar(100), category varchar(100), price int, active varchar(10))";
	String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),phoneNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
	System.out.println(q1);	 
	System.out.println(q2);
	System.out.println(q3);
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	System.out.println("Table created");
	con.close();
	
} catch(Exception e){
	System.out.print(e);
}
%>