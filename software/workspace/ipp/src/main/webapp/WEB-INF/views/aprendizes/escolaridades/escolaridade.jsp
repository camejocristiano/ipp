<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="../../../partials/header.jsp"></c:import>
<c:import url="../../../partials/navbar.jsp"></c:import>

<div class="container" id="main-container-content">
	<div class="row">
		<div class="col s12 l12">
			<c:url value="/sw/jovem/${jovem.id}" var="swJovemJovemId"></c:url>
			<a href="${swJovemJovemId}">
				<h4 class="header right black-text">${jovem.nome != null ? jovem.nome : "Escolaridade"}</h4>
			</a>
			<br />
			<br />		
			<br />
			<hr />
			<hr />
			<br />
	</div>
</div>
		<c:url value="/sw/escolaridade/${escolaridade.id}" var="swEscolaridadeId"></c:url>
		<form:form role="form" commandName="escolaridade" servletRelativeAction="${swEscolaridadeId}" method="POST">
					<div class="row">
						<div class="s12 col l4">
							<input type="checkbox" name="frequentaAEscola" class="filled-in" id="frequentaAEscola" <c:if test="${escolaridade.frequentaAEscola == true}">checked</c:if> />
							<label for="frequentaAEscola">Frequenta a escola?</label>
						</div><!-- // col -->
						<div class="input-field s12 col l4">
							<form:input path='nomeDoCurso' type='text'/>
							<form:errors path='nomeDoCurso'/> 
							<label for="nomeDoCurso">Nome do Curso:</label>
						</div><!-- // col -->
						<div class="input-field s12 col l4">
							<form:input id="dataConclusaoCurso" path="dataConclusaoCurso" type="text" class="validate datepicker" placeholder="Data de Conclusão do Curso" /> 
							<form:label path="dataConclusaoCurso">Data de Conclusão do Curso</form:label>
						</div><!-- // col -->
					</div><!-- // row -->
					<div class="row">
						<div class="s12 col l4">
							<input type="checkbox" name="concluiuOEnsinoMedio" class="filled-in" id="concluiuOEnsinoMedio" <c:if test="${escolaridade.concluiuOEnsinoMedio == true}">checked</c:if> />
							<label for="concluiuOEnsinoMedio">Concluiu o ensino médio?</label>
						</div><!-- // col -->
						<div class="input-field s12 col l4">
							<form:input path='cursoEnsinoMedio' type='text'/>
							<form:errors path='cursoEnsinoMedio'/> 
							<label for="cursoEnsinoMedio">Curso Ensino Médio:</label>
						</div><!-- // col -->
						<div class="input-field s12 col l4">
							<form:input id="dataConclusaoEnsinoMedio" path="dataConclusaoEnsinoMedio" type="text" class="validate datepicker" placeholder="Data de Conclusão do Ensino Medio" /> 
							<form:label path="dataConclusaoEnsinoMedio">Data de Conclusão do Ensino Medio</form:label>
						</div><!-- // col -->
					</div><!-- // row -->
			<form:hidden path="jovem" value="${escolaridade.jovem != null ? escolaridade.jovem.id : jovem.id}" />
			
			<c:if test="${requestScope.usuarioSessao.grupoDePermissoes.escolaridadeCadastrar == true && requestScope.escolaridade.id == null}">
				<button class="btn waves-effect waves-light right" type="submit">
					Salvar<i class="material-icons right">send</i>
				</button>
			</c:if>
			<c:if test="${requestScope.usuarioSessao.grupoDePermissoes.escolaridadeEditar == true && requestScope.escolaridade.id != null}">
				<button class="btn waves-effect waves-light right" type="submit">
					Salvar<i class="material-icons right">send</i>
				</button>
			</c:if>

		</form:form>
		<br />
		<br />
</div><!-- // container -->
<c:import url="../../../partials/js.jsp"></c:import>
<c:import url="../../../partials/footer.jsp"></c:import>
<c:import url="../../../partials/final.jsp"></c:import>