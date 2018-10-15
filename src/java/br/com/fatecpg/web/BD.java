package br.com.fatecpg.web;

import java.util.ArrayList;

public class BD {
    public static ArrayList<Pessoa> pessoa = new ArrayList<>();
    
        public static ArrayList<Pessoa> getPessoa() {
        return pessoa;
        }
    
    public static ArrayList<Empresa> empresa = new ArrayList<>();
    
        public static ArrayList<Empresa> getEmpresa() {
        return empresa;
        }
        
    public static ArrayList<Veiculo> veiculo = new ArrayList<>();
    
        public static ArrayList<Veiculo> getVeiculo() {
        return veiculo;
        }
}
