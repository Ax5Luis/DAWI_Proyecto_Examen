package com.google.buscador.venta.bean;






import lombok.Data;


@Data
public class ClienteBean {
	
	
	private int cod_cliente ;
	private String nom_cliente;
	private String ape_cliente;
	private int dni_docente;
	private String  fec_nac_cliente;
	private TipoBean tipo;
	public ClienteBean() {
		super();
	}
	public ClienteBean(int cod_cliente, String nom_cliente, String ape_cliente, int dni_docente, String fec_nac_cliente,
			TipoBean tipo) {
		super();
		this.cod_cliente = cod_cliente;
		this.nom_cliente = nom_cliente;
		this.ape_cliente = ape_cliente;
		this.dni_docente = dni_docente;
		this.fec_nac_cliente = fec_nac_cliente;
		this.tipo = tipo;
	}
	public int getCod_cliente() {
		return cod_cliente;
	}
	public void setCod_cliente(int cod_cliente) {
		this.cod_cliente = cod_cliente;
	}
	public String getNom_cliente() {
		return nom_cliente;
	}
	public void setNom_cliente(String nom_cliente) {
		this.nom_cliente = nom_cliente;
	}
	public String getApe_cliente() {
		return ape_cliente;
	}
	public void setApe_cliente(String ape_cliente) {
		this.ape_cliente = ape_cliente;
	}
	public int getDni_docente() {
		return dni_docente;
	}
	public void setDni_docente(int dni_docente) {
		this.dni_docente = dni_docente;
	}
	public String getFec_nac_cliente() {
		return fec_nac_cliente;
	}
	public void setFec_nac_cliente(String fec_nac_cliente) {
		this.fec_nac_cliente = fec_nac_cliente;
	}
	public TipoBean getTipo() {
		return tipo;
	}
	public void setTipo(TipoBean tipo) {
		this.tipo = tipo;
	}
	
	
	
	

	
	
	
	
	
	
	

}
