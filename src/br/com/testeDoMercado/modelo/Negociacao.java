package br.com.testeDoMercado.modelo;

import javax.persistence.*;


@Entity
public class Negociacao {
	
	@Id
	private long codigoDaMercadoria;
	private String tipoDaMercadoria;
	private String nomeDaMercadoria;
	private int qtdMercadoria;
	private String tipoDaConta;
	private double preco;

	
	
	
	public long getCodigoDaMercadoria() {
		return codigoDaMercadoria;
	}
	public void setCodigoDaMercadoria(long codigoDaMercadoria) {
		this.codigoDaMercadoria = codigoDaMercadoria;
	}
	public String getTipoDaMercadoria() {
		return tipoDaMercadoria;
	}
	public void setTipoDaMercadoria(String tipoDaMercadoria) {
		this.tipoDaMercadoria = tipoDaMercadoria;
	}
	public String getNomeDaMercadoria() {
		return nomeDaMercadoria;
	}
	public void setNomeDaMercadoria(String nomeDaMercadoria) {
		this.nomeDaMercadoria = nomeDaMercadoria;
	}
	public int getQtdMercadoria() {
		return qtdMercadoria;
	}
	public void setQtdMercadoria(int qtdMercadoria) {
		this.qtdMercadoria = qtdMercadoria;
	}
	public String getTipoDaConta() {
		return tipoDaConta;
	}
	public void setTipoDaConta(String tipoDaConta) {
		this.tipoDaConta = tipoDaConta;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	
	
}
