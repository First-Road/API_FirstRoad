package apiFirstRoad.apiFirstRoad.dto;

import jakarta.validation.constraints.NotBlank;


public record ConteudoDto(
        @NotBlank String titulo_conteudo,
        String descricao_conteudo,
        String link,
        String tipo
) {}
