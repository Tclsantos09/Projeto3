/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author thais.lopes
 */
public class Empresa {
    private String nome;
    private String razaoSocial;
    private String cnpj;
    private String telefone;
    private String website;
    
    public void setEmpresa(String nome, String razaoSocial, String cnpj, String telefone, String website){
    this.setNome(nome);
    this.setRazaoSocial(razaoSocial);
    this.setCnpj(cnpj);   
    this.setTelefone(telefone);
    this.setWebsite(website);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
