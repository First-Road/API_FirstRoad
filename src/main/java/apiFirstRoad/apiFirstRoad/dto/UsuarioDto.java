package apiFirstRoad.apiFirstRoad.dto;

import apiFirstRoad.apiFirstRoad.models.TipoUsuario;
import apiFirstRoad.apiFirstRoad.models.Unidade;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;

public record UsuarioDto(
        @NotBlank String nome,
        @NotBlank @Email(message = "O email deve estar no formato válido") String email,
        @NotBlank String senha,
        int nif,
        Date data_nascimento,
        Unidade id_unidade,

        TipoUsuario tipo_usuario,
        MultipartFile url_imagem,

        MultipartFile url_avatar


) {}



