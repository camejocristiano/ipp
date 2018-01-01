<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="../partials/header.jsp"></c:import>

			<div class="row">
				<div class="col s12">
        
            <div class="container" style="width:26em; margin: 2em auto; display: block; height: 11em">
            
                <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
                
                <img class="col l12" width="390em" src="../assets/images/ipp-logo.png" />
        
        
        
                <form:form role="form" commandName="usuario" servletRelativeAction="/login" method="POST">
                    <div class='row'>
                    <div class='col s12'>
                    
                    <hr />
                    
                    </div>
                    </div>
        
                    <div class='row'>
                    <div class='input-field col s12'>
                        <form:input path='email' type='email' required="required" />
						<form:errors path='email'/> 
						<label for="email">E-Mail</label>
                    </div>
                    </div>
        
                    <div class='row'>
                    <div class='input-field col s12'>
                        <form:input path='password' type='password' required="required" />
						<form:errors path='password'/> 
						<label for="password">Senha</label>
                    </div>
                    <label style='float: right;'>
                                        <a href='/' style="color: #ccc !important;"><b>Esqueceu a senha?</b></a>
                                    </label>
                    </div>
        
                    <br />
                    <div class='row'>
                        <div>
                            <button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect indigo orange'>Autenticar</button>
                        </div>  
                    </div>
                </form:form>
                </div>
            </div>
			
							</div>
			</div>
			
<c:import url="../partials/js.jsp"></c:import>
<c:import url="../partials/final.jsp"></c:import>