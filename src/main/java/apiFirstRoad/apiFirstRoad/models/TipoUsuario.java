package apiFirstRoad.apiFirstRoad.models;

public enum TipoUsuario {
    ADMIN("admin"),
    GESTOR("gestor"),
    COLABORADOR("colaborador");

    private String tipo;

    TipoUsuario(String tipoRecebido){
        this.tipo = tipoRecebido;
    }

    public String getRole(){
        return tipo;
    }
}
