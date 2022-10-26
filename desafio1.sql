DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
    plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50),
    valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
    usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR (100),
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.historico_de_reproducoes(
    reproducoes_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducoes DATETIME NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
    seguindo_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(99)   
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album VARCHAR(99),
    ano_lancamento YEAR NOT NULL,
    artista_id INT NOT NULL,        
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

DROP TABLE SpotifyClone.album;

CREATE TABLE SpotifyClone.musicas(
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR (99),
    duracao_segundos TIME,
    album_id INT,
    artista_id INT,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plano (plano, valor_plano)
VALUES
  ('gratuito', 000),
  ('familiar', 7,99),
  ('universitário', 5,99),
  ('pessoal', 6,99);
  
 INSERT INTO SpotifyClone.usuario (usuario, idade, plano_id, data_assinatura)
VALUES
('Barbara Liskov',			82,	1,		"2019-10-20"),
('Robert Cecil Martin',		58,	1,		"2017-01-06"),
('Ada Lovelace',			37,	2,		"2017-12-30"),
('Martin Fowler',			46,	2,		"2017-01-17"),
('Sandi Metz',				58,	2,		"2018-04-29"),
('Paulo Freire',			19,	3,	"2018-02-14"),
('Bell Hooks',				26,	3,	"2018-01-05"),
('Christopher Alexander',	85,	4,		"2019-06-05"),
('Judith Butler',			45,	4,		"2020-05-13"),
('Jorge Amado',				58,	4,		"2017-02-17");

INSERT INTO SpotifyClone.artistas ( nome)
VALUES
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');



 INSERT INTO SpotifyClone.albuns (album, artista_id, ano_lancamento)
VALUES
('Renaissance', 1,	2022),
('Jazz',	2,	1978),
('Hot Space', 2,	1982),
('Falso Brilhante',	3,	1998),
('Vento de Maio', 3, 2001),
('QVVJFA?',	4,	2003),
('Somewhere Far Beyond', 5, 2007),
('I Put A Spell On You', 6, 2012);

 INSERT INTO SpotifyClone.musicas (musica, duracao_segundos, album_id, artista_id)
VALUES
('BREAK MY SOUL', 279, 1, 1),
('VIRGO’S GROOVE', 369, 1, 1),
('ALIEN SUPERSTAR', 116, 1, 1),
('Don’t Stop Me Now', 203, 2, 2),
('Under Pressure', 152, 3, 2),
('Como Nossos Pais', 105, 4, 3),
('O Medo de Amar é o Medo de Ser Livre', 207, 5, 3),
('Samba em Paris', 267, 6, 4),
('The Bard’s Song', 244, 7, 5),
('Feeling Good', 100, 8, 6);



 INSERT INTO SpotifyClone.historico_de_reproducoes (usuario_id, cancao_id, data_reproducoes)
VALUES

  
