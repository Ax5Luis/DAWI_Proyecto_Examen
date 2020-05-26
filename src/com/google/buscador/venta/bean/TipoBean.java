package com.google.buscador.venta.bean;

import lombok.Data;

@Data
public class TipoBean {
	
	
	private int cod_tipo;
	private String nom_tipo;
	public TipoBean() {
		super();
	}
	public TipoBean(int cod_tipo, String nom_tipo) {
		super();
		this.cod_tipo = cod_tipo;
		this.nom_tipo = nom_tipo;
	}
	public int getCod_tipo() {
		return cod_tipo;
	}
	public void setCod_tipo(int cod_tipo) {
		this.cod_tipo = cod_tipo;
	}
	public String getNom_tipo() {
		return nom_tipo;
	}
	public void setNom_tipo(String nom_tipo) {
		this.nom_tipo = nom_tipo;
	}

	
	
	
}
