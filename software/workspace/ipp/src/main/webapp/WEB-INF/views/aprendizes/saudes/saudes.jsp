<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<div class="input-field  s12 col l12" style="border-bottom: 2px solid orange;">
		 <h4 class="header right orange-text">Situação de Saúde:</h4>
 		 <a class="btn-floating btn-large waves-effect waves-light orange" href="/situacoesDeSaude/form/${jovem.id}">
		 	<i class="material-icons">add</i>
		 </a>
	</div>
</div>
<table id="tabelaUnidades" class="display">
	<thead>
          <tr>
            <th>ID</th>
            <th>JOVEM</th>
            <th class="td-icon">EDITAR</th>
          </tr>
	</thead>
    <tbody>
        <c:forEach var="situacaoDeSaude" items="${requestScope.situacoesDeSaude}">
          <tr>
            <td>${situacaoDeSaude.id}</td>
            <td>${situacaoDeSaude.jovem.nome}</td>
            <td class="td-icon"><a href="/situacoesDeSaude/${situacaoDeSaude.id}"><i class="material-icons" >border_color</i></a></td>
          </tr>
          </c:forEach>
    </tbody>
</table>
<c:if test="${empty situacoesDeSaude}">
<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
	<a class="btn-floating btn-large waves-effect waves-light orange" href="/situacoesDeSaude/form/${jovem.id}">
		<i class="material-icons">add</i>
	</a>
</div>
</c:if>