<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:import url="../../../partials/header.jsp"></c:import>
<style>
/*
CSS Tables
*/
table {
 	width: 100%; 
 	cellspacing: 0;
}

/*
 CSS INDEXES
*/
.btn-index:hover {
	background-color: #669999;
	font-weight: bolder;
	font-style: italic;
}
.card-content:hover {
	font-weight: bolder;
	background-color: #669999;
	font-style: italic;
}
</style>
<c:import url="../../../partials/navbar.jsp"></c:import>

<div class="container" id="main-container-content">

<div class="row">
		<div class="col s12 l12">
			<h4 class="header right black-text">Usuários</h4>
			<br />
			<br />		
			<br />
			<hr />
			<hr />
			<br />
		</div>
	</div>


<table id="tabelaAgendamentos" class="display">
        <thead>
          <tr>
            <th>ID</th>
            <th>DESCRÇÃO</th>
            <th class="td-icon">EDITAR</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="agendamento" items="${requestScope.agendamentos}">
          <tr>
            <td>${agendamento.id}</td>
            <td>${agendamento.descricao}</td>
            <td class="td-icon"><a href="/sw/agendamentos/${agendamento.id}"><i class="material-icons" >border_color</i></a></td>
          </tr>
          </c:forEach>
          </tbody>
          
      </table> 
      
	<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
            <a class="btn-floating btn-large waves-effect waves-light orange"
                href="/sw/agendamentos/form">
                <i class="material-icons">add</i>
            </a>
         </div>
         
                  
         
	</div>  
<c:import url="../../../partials/js.jsp"></c:import>

<c:import url="../../../partials/footer.jsp"></c:import>