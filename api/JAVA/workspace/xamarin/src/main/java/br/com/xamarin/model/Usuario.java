package br.com.xamarin.model;

import javax.persistence.Entity;

@Entity
public class Usuario extends AbstractEntity {

	private static final long serialVersionUID = 1L;
	
    private String nome;
    private String email;
	private String username;
    private String password;

    public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
    public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
}