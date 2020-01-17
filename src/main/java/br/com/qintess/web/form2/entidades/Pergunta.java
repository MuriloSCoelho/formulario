package br.com.qintess.web.form2.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pergunta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(nullable = false, length = 100)
	private String tecnico;

	@Column(nullable = false, length = 100)
	private String atividades;

	@Column(nullable = false, length = 100)
	private String outrastec;

	@Column(nullable = false, length = 200)
	private String formacao;

	@Column(nullable = false, length = 200)
	private String certificacoes;

	@Column(nullable = false, length = 100)
	private String tempoexp;

	
	@Column(nullable = false, length = 100)
	private String idiomas;

	@Column(nullable = false, length = 100)
	private String restricao;

	@Column(nullable = false, length = 200)
	private String outraarea;

	@Column(nullable = false, length = 100)
	private String filhos;

	@Column(nullable = true, length = 100)
	private int qtdfilhos;

	@Column(nullable = true, length = 100)
	private String idadefilhos;

	@Column(nullable = false, length = 200)
	private String beneficios;

	@Column(nullable = false, length = 200)
	private String conhecer;

	@Column(nullable = false, length = 200)
	private String ensinar;

	@Column(nullable = true, length = 200)
	private String conhecertec;

	@Column(nullable = true, length = 200)
	private String conhecerlinguas;

	@Column(nullable = true, length = 200)
	private String conhecercomp;

	@Column(nullable = true, length = 200)
	private String conheceroff;

	@Column(nullable = true, length = 200)
	private String ensinartec;

	@Column(nullable = true, length = 200)
	private String ensinarlinguas;

	@Column(nullable = true, length = 200)
	private String ensinarcomp;

	@Column(nullable = true, length = 200)
	private String ensinaroff;

	public int getQtdfilhos() {
		return qtdfilhos;
	}

	public void setQtdfilhos(int qtdfilhos) {
		this.qtdfilhos = qtdfilhos;
	}

	public String getIdadefilhos() {
		return idadefilhos;
	}

	public void setIdadefilhos(String idadefilhos) {
		this.idadefilhos = idadefilhos;
	}

	public String getConhecer() {
		return conhecer;
	}

	public void setConhecer(String conhecer) {
		this.conhecer = conhecer;
	}

	public String getEnsinar() {
		return ensinar;
	}

	public void setEnsinar(String ensinar) {
		this.ensinar = ensinar;
	}

	public String getConhecertec() {
		return conhecertec;
	}

	public void setConhecertec(String conhecertec) {
		this.conhecertec = conhecertec;
	}

	public String getConhecerlinguas() {
		return conhecerlinguas;
	}

	public void setConhecerlinguas(String conhecerlinguas) {
		this.conhecerlinguas = conhecerlinguas;
	}

	public String getConhecercomp() {
		return conhecercomp;
	}

	public void setConhecercomp(String conhecercomp) {
		this.conhecercomp = conhecercomp;
	}

	public String getConheceroff() {
		return conheceroff;
	}

	public void setConheceroff(String conheceroff) {
		this.conheceroff = conheceroff;
	}

	public String getEnsinartec() {
		return ensinartec;
	}

	public void setEnsinartec(String ensinartec) {
		this.ensinartec = ensinartec;
	}

	public String getEnsinarlinguas() {
		return ensinarlinguas;
	}

	public void setEnsinarlinguas(String ensinarlinguas) {
		this.ensinarlinguas = ensinarlinguas;
	}

	public String getEnsinarcomp() {
		return ensinarcomp;
	}

	public void setEnsinarcomp(String ensinarcomp) {
		this.ensinarcomp = ensinarcomp;
	}

	public String getEnsinaroff() {
		return ensinaroff;
	}

	public void setEnsinaroff(String ensinaroff) {
		this.ensinaroff = ensinaroff;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTecnico() {
		return tecnico;
	}

	public void setTecnico(String tecnico) {
		this.tecnico = tecnico;
	}

	public String getAtividades() {
		return atividades;
	}

	public void setAtividades(String atividades) {
		this.atividades = atividades;
	}

	public String getOutrastec() {
		return outrastec;
	}

	public void setOutrastec(String outrastec) {
		this.outrastec = outrastec;
	}

	public String getFormacao() {
		return formacao;
	}

	public void setFormacao(String formacao) {
		this.formacao = formacao;
	}

	public String getCertificacoes() {
		return certificacoes;
	}

	public void setCertificacoes(String certificacoes) {
		this.certificacoes = certificacoes;
	}

	public String getTempoexp() {
		return tempoexp;
	}

	public void setTempoexp(String tempoexp) {
		this.tempoexp = tempoexp;
	}

	public String getIdiomas() {
		return idiomas;
	}

	public void setIdiomas(String idiomas) {
		this.idiomas = idiomas;
	}

	public String getRestricao() {
		return restricao;
	}

	public void setRestricao(String restricao) {
		this.restricao = restricao;
	}

	public String getOutraarea() {
		return outraarea;
	}

	public void setOutraarea(String outraarea) {
		this.outraarea = outraarea;
	}

	public String getFilhos() {
		return filhos;
	}

	public void setFilhos(String filhos) {
		this.filhos = filhos;
	}

	public String getBeneficios() {
		return beneficios;
	}

	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}

}
