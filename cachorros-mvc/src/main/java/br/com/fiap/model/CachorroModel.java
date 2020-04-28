package br.com.fiap.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Size;

public class CachorroModel {

	private Long id;
	private String nome;
	private String raca;
	private String sexo;
	private double idade;
	private boolean castrado;
	private String descricao;
	
	public CachorroModel(Long id, String nome, String raca, String sexo, double idade, boolean castrado,
			String descricao) {
		this.id = id;
		this.nome = nome;
		this.raca = raca;
		this.sexo = sexo;
		this.idade = idade;
		this.castrado = castrado;
		this.descricao = descricao;
	}

	public long getId() {
		return id;
	}

	public void setId(Long newId) {
		this.id = newId;
	}

	public String getNome() {
		return nome;
	}

	@Size(min = 1, max = 50, message = "O nome deve conter até 50 caracteres")
	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getRaca() {
		return raca;
	}

	@Size(min = 1, max = 50, message = "A raça deve conter até 50 caracteres")
	public void setRaca(String raca) {
		this.raca = raca;
	}

	public String getSexo() {
		return sexo;
	}
	
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public double getIdade() {
		return idade;
	}

	@DecimalMin(value = "0.1", message = "Idade deve ser acima de 0")
	public void setIdade(double idade) {
		this.idade = idade;
	}

	public boolean isCastrado() {
		return castrado;
	}

	public void setCastrado(boolean castrado) {
		this.castrado = castrado;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
