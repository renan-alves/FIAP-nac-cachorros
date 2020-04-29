package br.com.fiap.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CachorroModel {

	private Long id;
	private String nome;
	private String raca;
	private String sexo;
	private Double idade;
	private String descricao;
	
	public CachorroModel(Long id, String nome, String raca, String sexo, Double idade,
			String descricao) {
		this.id = id;
		this.nome = nome;
		this.raca = raca;
		this.sexo = sexo;
		this.idade = idade;
		this.descricao = descricao;
	}

	public long getId() {
		return id;
	}

	public void setId(Long newId) {
		this.id = newId;
	}

	@Size(min = 1, max = 50, message = "O nome deve conter até 50 caracteres")
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Size(min = 1, max = 50, message = "A raça deve conter até 50 caracteres")
	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	@Size(min = 1, max = 2, message = "Sexo deve ser \"M\" (masculino) ou \"F\" (feminino)")
	public String getSexo() {
		return sexo;
	}
	
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	@DecimalMin(value = "0.1", message = "Idade deve ser acima de 0")
	public Double getIdade() {
		return idade;
	}

	public void setIdade(Double idade) {
		this.idade = idade;
	}

	@Size(min = 1, max = 200, message = "Descricao deve ter no mínimo 1 e no máximo 200 caracteres")
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
