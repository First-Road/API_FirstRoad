package apiFirstRoad.apiFirstRoad.models;

public enum TipoConteudo {
    PDF("pdf"),
    VIDEO("video"),
    TEXTO("texto");


    private String tipo;

    TipoConteudo(String tipoRecebido){
        this.tipo = tipoRecebido;
    }

    public String getRole(){
        return tipo;
    }
}
