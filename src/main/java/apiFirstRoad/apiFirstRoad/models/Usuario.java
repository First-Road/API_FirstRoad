package apiFirstRoad.apiFirstRoad.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "tb_usuarios")
public class Usuario implements Serializable, UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "email")
    private String email;

    @Column(name = "senha")
    private String senha;

    @Column(name = "nif")
    private int nif;

    @Column(name = "data_nascimento")
    private Date data_nascimento;

    private TipoUsuario tipo_usuario;

    @ManyToOne
    @JoinColumn(name = "id_unidade")
    private Unidade id_unidade;

    @Column(name = "url_imagem")
    private String url_imagem;

    @Column(name = "url_avatar")
    private String url_avatar;
    // Getters e Setters


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (this.tipo_usuario == TipoUsuario.ADMIN){
            return List.of(
                    new SimpleGrantedAuthority("ROLE_ADMIN"),
                    new SimpleGrantedAuthority("ROLE_GESTOR"),
                    new SimpleGrantedAuthority("ROLE_COLABORADOR")
            );
        } else if (this.tipo_usuario == TipoUsuario.GESTOR) {
            return List.of(
                    new SimpleGrantedAuthority("ROLE_GESTOR")
            );
        } else if (this.tipo_usuario == TipoUsuario.COLABORADOR) {
            return List.of(
                    new SimpleGrantedAuthority("ROLE_COLABORADOR")
            );
        }
        return null;
    }

    @Override
    public String getPassword() {
        return senha;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
