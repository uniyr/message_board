<!-- new とedit共通部分（入力欄）のファイル -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="title">タイトル</label><br />
<input type="text" name="title" value="${message.title}" />
<br /><br />

<label for="content">メッセージ</label><br />
<input type="text" name="content" value="${message.content}" />
<!-- この、valueのおかげで、new.jspに表示する時には入力欄は空欄になり、edit.jspではすでに値が入った状態で表示されることになる -->
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>