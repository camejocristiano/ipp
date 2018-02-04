<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table id="tabelaContatos" class="display" width="100%" cellspacing="0">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th class="td-icon">EDITAR</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="contato" items="${requestScope.contatos}">
			<tr>
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td class="td-icon"><a href="/contatos/${contato.id}"><i
						class="material-icons">border_color</i></a></td>
			</tr>
		</c:forEach>
	</tbody>

</table>

<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
	<a class="btn-floating btn-large waves-effect waves-light orange"
		href="/contatos/form"> <i class="material-icons">add</i>
	</a>
</div>