package enums;

public enum TipoUsuario {

    ADMIN("admin"),
    VENDEDOR("vendedor"),
    COMPRADOR("comprador");

    public final String tipo;

    private TipoUsuario(String tipo) {
        this.tipo = tipo;
    }

}
