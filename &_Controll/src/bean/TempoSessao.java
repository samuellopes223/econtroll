/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Samuel
 */
public class TempoSessao {

    /**
     * @return the id_usuario
     */
    private String data_entrada;
    private String data_saida;
    private String duracao;
    private int idSessao;
    private String id_usuario;

    /**
     * @return the data_entrada
     */
    public String getData_entrada() {
        return data_entrada;
    }

    /**
     * @param data_entrada the data_entrada to set
     */
    public void setData_entrada(String data_entrada) {
        this.data_entrada = data_entrada;
    }

    /**
     * @return the data_saida
     */
    public String getData_saida() {
        return data_saida;
    }

    /**
     * @param data_saida the data_saida to set
     */
    public void setData_saida(String data_saida) {
        this.data_saida = data_saida;
    }

    /**
     * @return the duracao
     */
    public String getDuracao() {
        return duracao;
    }

    /**
     * @param duracao the duracao to set
     */
    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }

    /**
     * @return the idSessao
     */
    public int getIdSessao() {
        return idSessao;
    }

    /**
     * @param idSessao the idSessao to set
     */
    public void setIdSessao(int idSessao) {
        this.idSessao = idSessao;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }
}
