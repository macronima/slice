<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<html>
<head>
    <title>LOGIN</title>>
</head>
<body>
<div id="login-box" class="container">
                <div class="panel-heading">
                    <h3 class="panel-title">Войдите</h3>
                </div>
                <div class="panel-body">
                    <form accept-charset="UTF-8" role="form" id='loginForm' name='loginForm'
                          action="<c:url value='/j_spring_security_check' />" method='POST'>
                        <fieldset>
                            <div class="form-group <c:if test="${not empty error}">has-error</c:if>">
                                <input class="form-control" placeholder="Логин" name="username" type="text"
                                       required="" autofocus="">
                            </div>
                            <div class="form-group <c:if test="${not empty error}">has-error</c:if>">
                                <input class="form-control" placeholder="Пароль" name="password" type="password"
                                       value="" required="">
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Войти</button>
                            <button type="reset" class="btn btn-default btn-block">Сбросить</button>
                        </fieldset>
                    </form>
                </div>
                <c:if test="${not empty error}">
                    <div class="panel-footer">
                        <div id="loginError">${error}</div>
                    </div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="panel-footer">
                        <div id="loginMsg">${msg}</div>
                    </div>
                </c:if>
            </div>
</body>
</html>
