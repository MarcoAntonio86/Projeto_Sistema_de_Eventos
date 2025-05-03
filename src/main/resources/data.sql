-- Inserir categorias
INSERT INTO tb_categoria (id, descricao) VALUES 
(1, 'Palestra'),
(2, 'Oficina');

-- Inserir atividades (preço incluído e associação com categoria)
INSERT INTO tb_atividade (id, nome, descricao, preco, categoria_id) VALUES
(1, 'Introdução ao Spring Boot', 'Workshop introdutório sobre Spring Boot', 0.00, 2),
(2, 'Banco de Dados com PostgreSQL', 'Palestra sobre PostgreSQL', 0.00, 1);

-- Inserir blocos (agora com timestamps reais e referência à atividade)
-- Use o formato 'YYYY-MM-DDTHH:MM:SSZ' para o tipo Instant (ISO 8601 UTC)
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES 
(1, '2025-05-10T09:00:00Z', '2025-05-10T10:30:00Z', 1),
(2, '2025-05-10T11:00:00Z', '2025-05-10T12:00:00Z', 2);

-- Inserir participantes
INSERT INTO tb_participante (id, nome, email) VALUES
(1, 'João Silva', 'joao@email.com'),
(2, 'Maria Oliveira', 'maria@email.com');

-- Associar participantes a atividades (tabela de junção ManyToMany)
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES
(1, 1),
(1, 2),
(2, 2);
