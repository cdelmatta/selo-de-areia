// Origem: material de transparência implementado com auxílio de IA (OpenAI Codex).
shader_type canvas_item;

// Chave de cor: torna o fundo sólido transparente, preservando o PNG original.
// O personagem usa RGB(0,117,117); os objetos, RGB(118,59,54).
uniform vec3 cor_fundo = vec3(0.0, 0.45882353, 0.45882353);

void fragment() {
	if (distance(texture(TEXTURE, UV).rgb, cor_fundo) < 0.01) {
		COLOR.a = 0.0;
	}
}
