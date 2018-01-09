<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table id="tabelaDadosFinanceiros" class="display" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>ID</th>
            <th>TESTE</th>
            <th class="td-icon">EDITAR</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="financeiro" items="${requestScope.dadosFinanceiros}">
          <tr>
            <td>${financeiro.id}</td>
            <td>${financeiro.testDadosFinanceiros}</td>
            <td class="td-icon"><a href="/dadosFinanceiros/${financeiro.id}"><i class="material-icons" >border_color</i></a></td>
          </tr>
          </c:forEach>
          </tbody>
          
      </table> 
      
	<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
            <a class="btn-floating btn-large waves-effect waves-light orange"
                href="/dadosFinanceiros/form">
                <i class="material-icons">add</i>
            </a>
         </div>