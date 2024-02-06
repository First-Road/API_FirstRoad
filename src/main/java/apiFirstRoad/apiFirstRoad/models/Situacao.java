package apiFirstRoad.apiFirstRoad.models;

public enum Situacao {
    ATRASADO("atrasado"),
    ANDAMENTO("andamento"),
    CONCLUIDO("concluido");

    private String status;

    Situacao(String tipoRecebido){
        this.status = tipoRecebido;
    }

    public String getRole(){
        return status;
    }
}
