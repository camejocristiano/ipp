<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="../../../partials/header.jsp"></c:import>
<c:import url="../../../partials/navbar.jsp"></c:import>

<div class="container" id="main-container-content">

	<div class="row">
		<div class="input-field  s12 col l12" style="border-top: 2px solid orange;">
			 <h4 class="header right orange-text">Arco Ocupacional</h4>
		</div>
	</div>

	<div class="row">
		<form:form role="form" commandName="arcoOcupacional" servletRelativeAction="/arcos/${arcoOcupacional.titulo != null ? arcoOcupacional.id : null}" method="POST">
		<div class="input-field s12 col l12">
			<form:input path="titulo" value="${arcoOcupacional.titulo}" />
			<form:label path="titulo">Título</form:label>
		</div>
		
		<table id="tabelaUsuarios" class="display" width="100%" cellspacing="0">
        <thead>
          <tr>
          	<th>INCLUSOS</th>
            <th>TITULO</th>
            <th>NUMERO</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="cbo_arco" items="${requestScope.cbos_arco}">
          <tr>
			<td>
			<input type="checkbox" class="filled-in" name="cbos" id="cbos${cbo_arco.id}" value="${cbo_arco.id}" <c:if test="${cbo_arco.id != null}">checked</c:if> />
			<label for="cbos${cbo_arco.id}"></label>
            </td>
            <td>${cbo_arco.titulo}</td>
            <td>${cbo_arco.numero}</td>
          </tr>
        </c:forEach>
        <c:forEach var="cbo" items="${requestScope.cbos}">
          <tr>
			<td>
			<input type="checkbox" class="filled-in" name="cbos" id="cbos${cbo.id}" value="${cbo.id}" />
			<label for="cbos${cbo.id}"></label>
            </td>
            <td>${cbo.titulo}</td>
            <td>${cbo.numero}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table> 
		<br />
		<br />
		<input type="hidden" name="curso" value="${curso.id}" />
			<button class="btn waves-effect waves-light right" type="submit">
				Salvar<i class="material-icons right">send</i>
			</button>

		</form:form>
	</div>

</div>
<c:import url="../../../partials/js.jsp"></c:import>
<c:import url="../../../partials/footer.jsp"></c:import>

<script type="text/javascript">
	$(document).ready(function() {
		$('select').material_select();
	});
</script>

<c:import url="../../../partials/final.jsp"></c:import>