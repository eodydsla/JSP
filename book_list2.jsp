<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "book.BookDAO" %>
<%@ page import = "book.BookDTO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<h2>도서목록</h2>

<table border="1">
	<tr>
		<td>도서코드</td>
		<td>도서명</td>
		<td>저자</td>
		<td>단가</td>
		<td>수량</td>
	</tr> 

<%
BookDAO dao = new BookDAO();
List<BookDTO> items = dao.bookList();
for(int i=0; i<items.size(); i++){
	BookDTO dto=items.get(i);
%>
	<tr>
		<td><%=dto.getId()%></td>
		<td><%=dto.getTitle()%></td>
		<td><%=dto.getAuthor()%></td>
		<td><%=dto.getPrice()%></td>
		<td><%=dto.getQty()%></td>
	</tr>
<%
}
%>
</table>
</body>
</html>