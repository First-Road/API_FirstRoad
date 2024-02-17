package apiFirstRoad.apiFirstRoad.dto;

import apiFirstRoad.apiFirstRoad.models.TipoConteudo;
import jakarta.validation.constraints.NotBlank;


public record ConteudoDto(
        @NotBlank String titulo_conteudo,
        String descricao_conteudo,
        String link,
        TipoConteudo tipo
) {}
