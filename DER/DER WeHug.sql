CREATE TABLE `tb_temas` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`topico_principal` varchar(255) NOT NULL AUTO_INCREMENT,
	`sub_topicos` varchar(255) NOT NULL,
	`descricao` varchar(1000) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_postagens` (
	`id` INT(10) NOT NULL,
	`data_e_hora` DATETIME NOT NULL,
	`descricao` varchar(1000) NOT NULL,
	`midia` varchar(255) NOT NULL,
	`publicacao_ativa` BOOLEAN NOT NULL,
	`fk_temas` INT(10) NOT NULL,
	`fk_usuarios` INT(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuarios` (
	`id` INT(10) NOT NULL,
	`nome_completo` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk0` FOREIGN KEY (`fk_temas`) REFERENCES `tb_temas`(`id`);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk1` FOREIGN KEY (`fk_usuarios`) REFERENCES `tb_usuarios`(`id`);




