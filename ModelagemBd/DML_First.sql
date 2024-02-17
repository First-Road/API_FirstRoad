/* UNIDADES */
INSERT INTO tb_unidades VALUES(UUID_TO_BIN(UUID()),    'VolksWagem do Brasil',  '59104422000150',    'Estrada Marginal da Via Anchleta, Km 23,5 Ala 17 ',    0,    'Planta São Bernardo do Campo',    'Demarch',  '09823901');
INSERT INTO tb_unidades VALUES(UUID_TO_BIN(UUID()),    'VolksWagem do Brasil',  '06020318000544',    'Rua Volkswagen ',   100,    'Planta Resende',    'Polo Industrial',  '27537803');
INSERT INTO tb_unidades VALUES(UUID_TO_BIN(UUID()),    'VolksWagem do Brasil',  '59104422002446',    'Avenida Carlos Pedroso da Silveira ',  10000,    'Planta Taubaté',    'Polo Industrial',  '12043000');	
       
    select BIN_TO_UUID(id) from tb_unidades;
    select * from tb_unidades;
  
/* USUARIOS */
INSERT INTO tb_usuarios VALUES(UUID_TO_BIN(UUID()),    'Everton',    'everton@vw.com',    'senai123',    2896427,    '1988-04-04', 		0,	UUID_TO_BIN('24fd5419-c6e0-11ee-ba53-6018955666f8'),	null, null);
INSERT INTO tb_usuarios VALUES(UUID_TO_BIN(UUID()),    'Lucas',    'lucas@vw.com',    'senai123',    29057863,    '1990-10-10', 		1,	UUID_TO_BIN('24fd5419-c6e0-11ee-ba53-6018955666f8'),	null, null);
INSERT INTO tb_usuarios VALUES(UUID_TO_BIN(UUID()),    'Kauan',    'kauan@vw.com',    'senai123',    26514589,    '2004-06-06', 		0,	UUID_TO_BIN('24fd5419-c6e0-11ee-ba53-6018955666f8'),	null, null);

select  BIN_TO_UUID(id), nome, email, senha, nif, data_nascimento, tipo_usuario, BIN_TO_UUID(id_unidade), url_imagem, url_avatar from tb_usuarios;

   
/* CONTEUDOS */
INSERT INTO tb_conteudo VALUES(UUID_TO_BIN(UUID()),'Novo Titulo editado',	'001 edit - Aprendendo SpringBoot do zero ao avançado!!',			'https://www.udemy.com.br/editado',		'00:22:00', 0 );
INSERT INTO tb_conteudo VALUES(UUID_TO_BIN(UUID()),'SpringBoot Volume1', 	'Aprendendo SpringBoot do zero ao avançado!! Volume 1',				'https://www.udemy.com.br/sbv1',		'00:17:00', 1 );
INSERT INTO tb_conteudo VALUES(UUID_TO_BIN(UUID()),'SpringBoot Volume 2', 	'Aprendendo SpringBoot do zero ao avançado!! Volume 2',				'https://www.udemy.com.br/sbv2',		'40:30:00', 2 );
INSERT INTO tb_conteudo VALUES(UUID_TO_BIN(UUID()),'SpringBoot Volume 3', 	'Aprendendo SpringBoot do zero ao avançado!! Volume 3',				'https://www.udemy.com.br/sbv3',		'80:00:00', 3 );
    select BIN_TO_UUID(id), titulo_conteudo, descricao_conteudo, link, tipo FROM tb_conteudo;
    select * from tb_trilha_conteudo;
    
INSERT INTO tb_trilha_conteudo VALUES(UUID_TO_BIN(UUID()),UUID_TO_BIN('382b9874-d8aa-4c0f-ab94-2d0fb2fe6c36'), false);
    
    select * from tb_conteudo;
    alter table tb_conteudo Drop column tempo_conteudo;
/* UNIDADES ORGANIZACIONAIS */
INSERT INTO tb_unidades_organizacionais VALUES(UUID_TO_BIN(UUID()),	'Atendimento',	UUID_TO_BIN('b9ba2219-4def-4038-a58c-b8b189159fc7'),	UUID_TO_BIN('f37a9c5b-c3a3-11ee-9a16-4851c580186b'));
INSERT INTO tb_unidades_organizacionais VALUES(UUID_TO_BIN('2149319a-87c9-45f5-b978-002ea34c3472'),	'Suporte',		UUID_TO_BIN('425689b9-8db7-4782-8d6c-a940f739fd0b'),	UUID_TO_BIN('0046c381-941c-11ee-bcc9-54bf6410fda9'));
INSERT INTO tb_unidades_organizacionais VALUES(UUID_TO_BIN('31336dfb-8f3b-4052-b8ed-cfe83528055b'),	'TI2',			UUID_TO_BIN('425689b9-8db7-4782-8d6c-a940f739fd0b'),	UUID_TO_BIN('0046c381-941c-11ee-bcc9-54bf6410fda9'));
INSERT INTO tb_unidades_organizacionais VALUES(UUID_TO_BIN('4844f32d-defb-4240-8997-3e02a157e230'),	'Comercial',	UUID_TO_BIN('425689b9-8db7-4782-8d6c-a940f739fd0b'),	UUID_TO_BIN('0046c381-941c-11ee-bcc9-54bf6410fda9'));
INSERT INTO tb_unidades_organizacionais VALUES(UUID_TO_BIN('515588ed-9466-11ee-bcc9-54bf6410fda2'),	'TI',			UUID_TO_BIN('425689b9-8db7-4782-8d6c-a940f739fd0b'),	UUID_TO_BIN('0046c381-941c-11ee-bcc9-54bf6410fda9'));
select * from tb_unidades_organizacionais;

/* TRILHA */
INSERT INTO tb_trilha VALUES(UUID_TO_BIN(UUID())	,'Trilha Dev iniciante 5',		'Esta trilha contem passos iniciais para um dev iniciante',	'01:30:00', 0);
INSERT INTO tb_trilha VALUES(UUID_TO_BIN(UUID())	,'Nova Trilha Dev Avançado',	'Esta trilha contem passos iniciais para um avançado     ',	'08:30:00',	1);
select BIN_TO_UUID(id), titulo_conteudo from tb_conteudo;
select BIN_TO_UUID(id), titulo_trilha from tb_trilha;
select * from tb_trilha;


select BIN_TO_UUID(id_trilha), BIN_TO_UUID(id_conteudo), concluido from tb_trilha_conteudo;
select * from tb_trilha_conteudo;

INSERT INTO tb_trilha_conteudo VALUES ( UUID_TO_BIN('3b657a78-9811-417c-ba7e-9706cc13ec02') ,UUID_TO_BIN('382b9874-d8aa-4c0f-ab94-2d0fb2fe6c36'), false);
INSERT INTO tb_trilha_conteudo VALUES ( UUID_TO_BIN('3b657a78-9811-417c-ba7e-9706cc13ec02') ,UUID_TO_BIN('8bd553a0-103a-4404-9873-b5303ba3e206'), false);
INSERT INTO tb_trilha_conteudo VALUES( UUID_TO_BIN('3b657a78-9811-417c-ba7e-9706cc13ec02')	, UUID_TO_BIN('8cb9c2cc-9791-4d0f-b0bb-64073fba5511'), false);

INSERT INTO tb_trilha_conteudo VALUES ( UUID_TO_BIN('586e5883-2903-4d43-8297-0826b8d2ba7b') ,UUID_TO_BIN('863996b1-0cf9-4968-a5cc-0b6c2a01afe8'), false);
INSERT INTO tb_trilha_conteudo VALUES ( UUID_TO_BIN('586e5883-2903-4d43-8297-0826b8d2ba7b') ,UUID_TO_BIN('1cd40a0b-28c4-48ee-9b1f-9fd0898f47a2'), false);
INSERT INTO tb_trilha_conteudo VALUES( UUID_TO_BIN('586e5883-2903-4d43-8297-0826b8d2ba7b')	, UUID_TO_BIN('8cb9c2cc-9791-4d0f-b0bb-64073fba5511'), false);

select * from tb_usuario_trilha;

select  BIN_TO_UUID(id), nome, email, senha, nif, data_nascimento, tipo_usuario, BIN_TO_UUID(id_unidade), url_imagem, url_avatar from tb_usuarios;

INSERT INTO tb_usuario_trilha VALUES ( UUID_TO_BIN('3e71507d-6e01-4f98-b550-3cc34fb82b81') ,UUID_TO_BIN('3b657a78-9811-417c-ba7e-9706cc13ec02'));