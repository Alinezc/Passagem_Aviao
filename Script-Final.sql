/* Definição do SGBD
  Sistemas utilizados para gerir os banco de dados:manter bases de dados e dados,garantir a seguraça de acesso aos dados,
integridade de dados,controle de concorrencia e tolerância a falhas.
SGBD ultilizado nesse trabalho foi SQL SERVER.
*/


USE [master]
GO
/* Criação Database */
CREATE DATABASE [Trabalho-Pronto (1)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trabalho-Pronto (1)_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trabalho-Pronto (1).mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Trabalho-Pronto (1)_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trabalho-Pronto (1).ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trabalho-Pronto (1)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET  MULTI_USER 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET QUERY_STORE = OFF
GO
USE [Trabalho-Pronto (1)]
GO
/* Table [dbo].[cliente] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[ID_cliente] [int] NOT NULL,
	[nome] [char](64) NULL,
	[genero] [char](20) NULL,
	[email] [char](64) NULL,
	[dependentes] [char](64) NULL,
	[telefone] [char](64) NULL,
	[data_nascimento] [date] NULL,
	[passaporte] [char](64) NULL,
	[animal] [char](64) NULL,
	[endereco] [char](64) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[ID_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[direito] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direito](
	[ID_direito] [int] NOT NULL,
	[at_direito] [char](100) NULL,
	[reembolso] [float] NULL,
 CONSTRAINT [PK_direito] PRIMARY KEY CLUSTERED 
(
	[ID_direito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[direito_consumidor] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direito_consumidor](
	[ID_direito_cliente] [int] NOT NULL,
	[direito] [char](64) NULL,
 CONSTRAINT [PK_direito_consumidor] PRIMARY KEY CLUSTERED 
(
	[ID_direito_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[possui] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[possui](
	[ID_possui2] [int] NOT NULL,
	[ID_direito] [int] NULL,
	[ID_cliente] [int] NULL,
 CONSTRAINT [PK_possui] PRIMARY KEY CLUSTERED 
(
	[ID_possui2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[segue] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segue](
	[ID_segue] [int] NOT NULL,
	[ID_status_voo] [int] NOT NULL,
	[ID_direto_cliente] [int] NOT NULL,
	[ID_cliente] [int] NOT NULL,
 CONSTRAINT [PK_segue_1] PRIMARY KEY CLUSTERED 
(
	[ID_segue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[status_voo] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_voo](
	[ID_status_voo] [int] NOT NULL,
	[tempo_atraso] [float] NULL,
	[voo_cancelado] [char](64) NULL,
 CONSTRAINT [PK_status_voo] PRIMARY KEY CLUSTERED 
(
	[ID_status_voo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[voo] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voo](
	[ID_voo] [int] NOT NULL,
	[ID_status_voo] [int] NOT NULL,
	[ID_tipo_aviao] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[hora_partida] [datetime] NOT NULL,
	[hora_chegada] [datetime] NOT NULL,
	[nome_voo] [char](64) NOT NULL,
 CONSTRAINT [PK_voo] PRIMARY KEY CLUSTERED 
(
	[ID_voo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* View [dbo].[VW_Direito_cliente] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Direito_cliente]
AS
SELECT        dbo.direito_consumidor.direito, dbo.status_voo.tempo_atraso, dbo.status_voo.voo_cancelado, dbo.direito.at_direito, dbo.direito.reembolso, dbo.cliente.nome, dbo.voo.nome_voo, dbo.voo.hora_partida, 
                         dbo.voo.hora_chegada
FROM            dbo.segue INNER JOIN
                         dbo.direito_consumidor ON dbo.segue.ID_direto_cliente = dbo.direito_consumidor.ID_direito_cliente INNER JOIN
                         dbo.cliente ON dbo.segue.ID_cliente = dbo.cliente.ID_cliente INNER JOIN
                         dbo.possui ON dbo.cliente.ID_cliente = dbo.possui.ID_cliente INNER JOIN
                         dbo.direito ON dbo.possui.ID_direito = dbo.direito.ID_direito INNER JOIN
                         dbo.status_voo ON dbo.segue.ID_status_voo = dbo.status_voo.ID_status_voo INNER JOIN
                         dbo.voo ON dbo.status_voo.ID_status_voo = dbo.voo.ID_status_voo
GO
/* Table [dbo].[compra] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[ID_compra] [int] NOT NULL,
	[ID_cliente] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[ID_pagamento] [int] NOT NULL,
	[data] [date] NULL,
	[validade] [datetime] NULL,
 CONSTRAINT [PK_compra] PRIMARY KEY CLUSTERED 
(
	[ID_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[forma_pagamento]  */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forma_pagamento](
	[ID_pagamento] [int] NOT NULL,
	[forma_pagamento] [char](64) NOT NULL,
	[taxa] [float] NULL,
	[desconto] [float] NULL,
 CONSTRAINT [PK_forma_pagamento] PRIMARY KEY CLUSTERED 
(
	[ID_pagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[passagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passagem](
	[ID_passagem] [int] NOT NULL,
	[ID_func] [int] NOT NULL,
	[ID_destino_volta] [int] NOT NULL,
	[ID_nacionalidade] [int] NOT NULL,
	[ID_seguro] [int] NOT NULL,
	[ID_tipo_passagem] [int] NOT NULL,
	[data_volta] [date] NULL,
	[horario_embarque] [time](7) NOT NULL,
	[tipo_mala] [char](64) NULL,
	[data_ida] [date] NOT NULL,
	[valor_passagem] [float] NOT NULL,
 CONSTRAINT [PK_passagem] PRIMARY KEY CLUSTERED 
(
	[ID_passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* View [dbo].[VW_Compra_Cliente] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Compra_Cliente]
AS
SELECT        dbo.cliente.nome, dbo.passagem.valor_passagem, dbo.forma_pagamento.forma_pagamento, dbo.forma_pagamento.taxa, dbo.forma_pagamento.desconto, dbo.compra.data, dbo.compra.validade, dbo.compra.ID_compra
FROM            dbo.compra INNER JOIN
                         dbo.forma_pagamento ON dbo.compra.ID_pagamento = dbo.forma_pagamento.ID_pagamento INNER JOIN
                         dbo.passagem ON dbo.compra.ID_passagem = dbo.passagem.ID_passagem INNER JOIN
                         dbo.cliente ON dbo.compra.ID_cliente = dbo.cliente.ID_cliente
GO
/* Table [dbo].[solicitacao_para_uso] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitacao_para_uso](
	[ID_modifica_passagem] [int] NOT NULL,
	[ID_cliente_altera] [int] NOT NULL,
	[ID_cliente_usa] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[multa_passagem] [float] NULL,
	[tipo_solitacao] [char](64) NULL,
 CONSTRAINT [PK_solicitacao_para_uso] PRIMARY KEY CLUSTERED 
(
	[ID_modifica_passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* View [dbo].[VW_Solicita_para_Uso] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Solicita_para_Uso]
AS
SELECT        dbo.cliente.nome, dbo.cliente.ID_cliente, dbo.solicitacao_para_uso.multa_passagem, dbo.solicitacao_para_uso.tipo_solitacao, dbo.solicitacao_para_uso.ID_cliente_altera, dbo.solicitacao_para_uso.ID_cliente_usa, 
                         dbo.solicitacao_para_uso.ID_modifica_passagem, dbo.solicitacao_para_uso.ID_passagem
FROM            dbo.cliente INNER JOIN
                         dbo.solicitacao_para_uso ON dbo.cliente.ID_cliente = dbo.solicitacao_para_uso.ID_cliente_usa AND dbo.cliente.ID_cliente = dbo.solicitacao_para_uso.ID_cliente_altera
GO
/* Table [dbo].[funcionario] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionario](
	[ID_func] [int] NOT NULL,
	[nome_func] [char](64) NOT NULL,
	[genero] [char](20) NOT NULL,
	[rg] [char](10) NOT NULL,
	[cpf] [char](11) NOT NULL,
	[turno] [char](64) NOT NULL,
	[telefone] [int] NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[ID_func] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/*  View [dbo].[VW_Funcionario_Vende_Passagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Funcionario_Vende_Passagem]
AS
SELECT        dbo.passagem.ID_passagem, dbo.passagem.ID_func, dbo.funcionario.nome_func, dbo.funcionario.turno, dbo.funcionario.genero
FROM            dbo.funcionario INNER JOIN
                         dbo.passagem ON dbo.funcionario.ID_func = dbo.passagem.ID_func
GO
/* Table [dbo].[tipo_aviao] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_aviao](
	[ID_tipo_aviao] [int] NOT NULL,
	[modelo] [char](64) NOT NULL,
	[capacidade_p] [int] NOT NULL,
	[capacidade_b] [int] NOT NULL,
 CONSTRAINT [PK_tipo_aviao] PRIMARY KEY CLUSTERED 
(
	[ID_tipo_aviao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Object:  View [dbo].[VW_Tipo_Aviao_voo]  */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Tipo_Aviao_voo]
AS
SELECT        dbo.tipo_aviao.modelo, dbo.tipo_aviao.capacidade_p, dbo.tipo_aviao.capacidade_b, dbo.voo.hora_partida, dbo.voo.hora_chegada, dbo.voo.nome_voo, dbo.voo.ID_status_voo, dbo.voo.ID_voo
FROM            dbo.tipo_aviao INNER JOIN
                         dbo.voo ON dbo.tipo_aviao.ID_tipo_aviao = dbo.voo.ID_tipo_aviao
GO
/* Table [dbo].[conexao] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conexao](
	[ID_conexao] [int] NOT NULL,
	[local] [char](64) NULL,
	[horario_conexao] [datetime] NULL,
 CONSTRAINT [PK_conexao] PRIMARY KEY CLUSTERED 
(
	[ID_conexao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[tem1] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tem1](
	[ID_tem1] [int] NOT NULL,
	[ID_Passagem] [int] NOT NULL,
	[ID_conexao] [int] NOT NULL,
 CONSTRAINT [PK_tem1] PRIMARY KEY CLUSTERED 
(
	[ID_tem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* View [dbo].[VW_Conexao] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Conexao]
AS
SELECT        dbo.conexao.local, dbo.conexao.horario_conexao, dbo.tem1.ID_Passagem
FROM            dbo.conexao INNER JOIN
                         dbo.tem1 ON dbo.conexao.ID_conexao = dbo.tem1.ID_conexao INNER JOIN
                         dbo.passagem ON dbo.tem1.ID_Passagem = dbo.passagem.ID_passagem
GO
/* Table [dbo].[animal] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal](
	[ID_dependentes] [int] NOT NULL,
	[ID_tam_animal] [int] NOT NULL,
	[ID_local_transporte] [int] NOT NULL,
	[taxa_d] [float] NULL,
	[desconto_d] [float] NULL,
	[cv] [char](64) NULL,
	[cvi] [char](64) NULL,
	[idade_an] [int] NULL,
	[atestado_saude] [char](64) NULL,
 CONSTRAINT [PK_animal] PRIMARY KEY CLUSTERED 
(
	[ID_dependentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[avaliacao] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avaliacao](
	[ID_avaliacao] [int] NOT NULL,
	[opniao] [char](64) NULL,
 CONSTRAINT [PK_avaliacao] PRIMARY KEY CLUSTERED 
(
	[ID_avaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[bagagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bagagem](
	[ID_bagagem] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[ID_tipo_bagagem] [int] NOT NULL,
	[ID_cliente] [int] NOT NULL,
	[peso] [float] NULL,
 CONSTRAINT [PK_bagagem] PRIMARY KEY CLUSTERED 
(
	[ID_bagagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[concede] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[concede](
	[ID_concede] [int] NOT NULL,
	[ID_cliente] [int] NOT NULL,
	[ID_avaliacao] [int] NOT NULL,
 CONSTRAINT [PK_concede] PRIMARY KEY CLUSTERED 
(
	[ID_concede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[dependentes] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dependentes](
	[ID_dependentes] [int] NOT NULL,
	[taxa_d] [float] NULL,
	[desconto_d] [float] NULL,
 CONSTRAINT [PK_dependentes] PRIMARY KEY CLUSTERED 
(
	[ID_dependentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[destino] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino](
	[ID_destino_localicao] [int] NOT NULL,
	[pais] [char](64) NULL,
	[cidade] [char](64) NULL,
 CONSTRAINT [PK_destino] PRIMARY KEY CLUSTERED 
(
	[ID_destino_localicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[destino_volta] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_volta](
	[ID_destino_volta] [int] NOT NULL,
	[pais] [char](64) NULL,
	[cidade] [char](64) NULL,
 CONSTRAINT [PK_destino_volta] PRIMARY KEY CLUSTERED 
(
	[ID_destino_volta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[dispoe] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dispoe](
	[ID_dispoe] [int] NOT NULL,
	[ID_conexao] [int] NOT NULL,
	[ID_empresa] [int] NOT NULL,
 CONSTRAINT [PK_dispoe] PRIMARY KEY CLUSTERED 
(
	[ID_dispoe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[empresa] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[ID_empresa] [int] NOT NULL,
	[nome_empresa] [char](64) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[local_transporte] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_transporte](
	[ID_local_transporte] [int] NOT NULL,
	[local] [char](64) NOT NULL,
	[taxa_trans_animal] [float] NULL,
 CONSTRAINT [PK_tamanho_animal] PRIMARY KEY CLUSTERED 
(
	[ID_local_transporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[nacionalidade] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacionalidade](
	[ID_nacionalidade] [int] NOT NULL,
	[tipo_nacionalidade] [char](50) NULL,
 CONSTRAINT [PK_nacionalidade] PRIMARY KEY CLUSTERED 
(
	[ID_nacionalidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[pertence] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pertence](
	[ID_dependentes] [int] NOT NULL,
	[ID_tipo_crianca] [int] NOT NULL,
	[tipo_crianca_at] [char](10) NULL,
	[taxa_d] [float] NULL,
	[desconto_d] [float] NULL,
	[idade_cr] [int] NULL,
 CONSTRAINT [PK_pertence] PRIMARY KEY CLUSTERED 
(
	[ID_dependentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[seguro_viagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seguro_viagem](
	[ID_seguro] [int] NOT NULL,
	[tipo_seguro] [char](64) NULL,
 CONSTRAINT [PK_seguro_viagem] PRIMARY KEY CLUSTERED 
(
	[ID_seguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[tamanho_animal] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tamanho_animal](
	[ID_tam_animal] [int] NOT NULL,
	[porte] [char](64) NULL,
 CONSTRAINT [PK_tamanho_animal1] PRIMARY KEY CLUSTERED 
(
	[ID_tam_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[tem3] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tem3](
	[ID_tem3] [int] NOT NULL,
	[ID_voo] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[ID_destino_localicao] [int] NOT NULL,
 CONSTRAINT [PK_tem3] PRIMARY KEY CLUSTERED 
(
	[ID_tem3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[tipo_bagagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_bagagem](
	[ID_tipo_bagagem] [int] NOT NULL,
	[tipo_bagagem] [char](64) NOT NULL,
	[valor_bagagem] [float] NULL,
 CONSTRAINT [PK_tipo_bagagem] PRIMARY KEY CLUSTERED 
(
	[ID_tipo_bagagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[tipo_passagem] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_passagem](
	[ID_tipo_passagem] [int] NOT NULL,
	[tipo_passagem] [char](64) NOT NULL,
 CONSTRAINT [PK_tipo_passagem] PRIMARY KEY CLUSTERED 
(
	[ID_tipo_passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[usada] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usada](
	[ID_usada] [int] NOT NULL,
	[ID_passagem] [int] NOT NULL,
	[ID_voo] [int] NOT NULL,
 CONSTRAINT [PK_usada] PRIMARY KEY CLUSTERED 
(
	[ID_usada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Table [dbo].[usufrui] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usufrui](
	[ID_usufrui] [int] NOT NULL,
	[ID_cliente] [int] NOT NULL,
	[ID_dependentes] [int] NOT NULL,
 CONSTRAINT [PK_usufrui] PRIMARY KEY CLUSTERED 
(
	[ID_usufrui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/* Index [NonClusteredIndex-20221127-123505] */
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20221127-123505] ON [dbo].[destino]
(
	[pais] ASC,
	[cidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/* Index [NonClusteredIndex-20221127-123326]  */
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20221127-123326] ON [dbo].[forma_pagamento]
(
	[forma_pagamento] ASC,
	[taxa] ASC,
	[desconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/* Index [NonClusteredIndex-20221127-123245] 	*/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20221127-123245] ON [dbo].[passagem]
(
	[data_volta] ASC,
	[horario_embarque] ASC,
	[tipo_mala] ASC,
	[data_ida] ASC,
	[valor_passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/* Index [NonClusteredIndex-20221127-123142] */
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20221127-123142] ON [dbo].[status_voo]
(
	[tempo_atraso] ASC,
	[voo_cancelado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/* Index [IDX_voo] */
CREATE NONCLUSTERED INDEX [IDX_voo] ON [dbo].[voo]
(
	[hora_partida] ASC,
	[hora_chegada] ASC,
	[nome_voo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_dependentes] FOREIGN KEY([ID_dependentes])
REFERENCES [dbo].[dependentes] ([ID_dependentes])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_dependentes]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_local_transporte] FOREIGN KEY([ID_local_transporte])
REFERENCES [dbo].[local_transporte] ([ID_local_transporte])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_local_transporte]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_tamanho_animal] FOREIGN KEY([ID_tam_animal])
REFERENCES [dbo].[tamanho_animal] ([ID_tam_animal])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_tamanho_animal]
GO
ALTER TABLE [dbo].[bagagem]  WITH CHECK ADD  CONSTRAINT [FK_bagagem_passagem] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[bagagem] CHECK CONSTRAINT [FK_bagagem_passagem]
GO
ALTER TABLE [dbo].[bagagem]  WITH CHECK ADD  CONSTRAINT [FK_bagagem_tipo_bagagem] FOREIGN KEY([ID_tipo_bagagem])
REFERENCES [dbo].[tipo_bagagem] ([ID_tipo_bagagem])
GO
ALTER TABLE [dbo].[bagagem] CHECK CONSTRAINT [FK_bagagem_tipo_bagagem]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [FK_compra_cliente] FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [FK_compra_cliente]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [FK_compra_forma_pagamento] FOREIGN KEY([ID_pagamento])
REFERENCES [dbo].[forma_pagamento] ([ID_pagamento])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [FK_compra_forma_pagamento]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [FK_compra_passagem] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [FK_compra_passagem]
GO
ALTER TABLE [dbo].[concede]  WITH CHECK ADD  CONSTRAINT [FK_concede_avaliacao] FOREIGN KEY([ID_avaliacao])
REFERENCES [dbo].[avaliacao] ([ID_avaliacao])
GO
ALTER TABLE [dbo].[concede] CHECK CONSTRAINT [FK_concede_avaliacao]
GO
ALTER TABLE [dbo].[concede]  WITH CHECK ADD  CONSTRAINT [FK_concede_cliente] FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[concede] CHECK CONSTRAINT [FK_concede_cliente]
GO
ALTER TABLE [dbo].[dispoe]  WITH CHECK ADD  CONSTRAINT [FK_dispoe_conexao] FOREIGN KEY([ID_conexao])
REFERENCES [dbo].[conexao] ([ID_conexao])
GO
ALTER TABLE [dbo].[dispoe] CHECK CONSTRAINT [FK_dispoe_conexao]
GO
ALTER TABLE [dbo].[dispoe]  WITH CHECK ADD  CONSTRAINT [FK_dispoe_Empresa] FOREIGN KEY([ID_empresa])
REFERENCES [dbo].[empresa] ([ID_empresa])
GO
ALTER TABLE [dbo].[dispoe] CHECK CONSTRAINT [FK_dispoe_Empresa]
GO
ALTER TABLE [dbo].[passagem]  WITH CHECK ADD  CONSTRAINT [FK_passagem_destino_volta] FOREIGN KEY([ID_destino_volta])
REFERENCES [dbo].[destino_volta] ([ID_destino_volta])
GO
ALTER TABLE [dbo].[passagem] CHECK CONSTRAINT [FK_passagem_destino_volta]
GO
ALTER TABLE [dbo].[passagem]  WITH CHECK ADD  CONSTRAINT [FK_passagem_funcionario] FOREIGN KEY([ID_func])
REFERENCES [dbo].[funcionario] ([ID_func])
GO
ALTER TABLE [dbo].[passagem] CHECK CONSTRAINT [FK_passagem_funcionario]
GO
ALTER TABLE [dbo].[passagem]  WITH CHECK ADD  CONSTRAINT [FK_passagem_nacionalidade] FOREIGN KEY([ID_nacionalidade])
REFERENCES [dbo].[nacionalidade] ([ID_nacionalidade])
GO
ALTER TABLE [dbo].[passagem] CHECK CONSTRAINT [FK_passagem_nacionalidade]
GO
ALTER TABLE [dbo].[passagem]  WITH CHECK ADD  CONSTRAINT [FK_passagem_seguro_viagem] FOREIGN KEY([ID_seguro])
REFERENCES [dbo].[seguro_viagem] ([ID_seguro])
GO
ALTER TABLE [dbo].[passagem] CHECK CONSTRAINT [FK_passagem_seguro_viagem]
GO
ALTER TABLE [dbo].[passagem]  WITH CHECK ADD  CONSTRAINT [FK_passagem_tipo_passagem] FOREIGN KEY([ID_tipo_passagem])
REFERENCES [dbo].[tipo_passagem] ([ID_tipo_passagem])
GO
ALTER TABLE [dbo].[passagem] CHECK CONSTRAINT [FK_passagem_tipo_passagem]
GO
ALTER TABLE [dbo].[pertence]  WITH CHECK ADD  CONSTRAINT [FK_pertence_dependentes] FOREIGN KEY([ID_dependentes])
REFERENCES [dbo].[dependentes] ([ID_dependentes])
GO
ALTER TABLE [dbo].[pertence] CHECK CONSTRAINT [FK_pertence_dependentes]
GO
ALTER TABLE [dbo].[possui]  WITH CHECK ADD  CONSTRAINT [FK_possui_cliente] FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[possui] CHECK CONSTRAINT [FK_possui_cliente]
GO
ALTER TABLE [dbo].[possui]  WITH CHECK ADD  CONSTRAINT [FK_possui_direito] FOREIGN KEY([ID_direito])
REFERENCES [dbo].[direito] ([ID_direito])
GO
ALTER TABLE [dbo].[possui] CHECK CONSTRAINT [FK_possui_direito]
GO
ALTER TABLE [dbo].[segue]  WITH CHECK ADD  CONSTRAINT [FK_segue_cliente] FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[segue] CHECK CONSTRAINT [FK_segue_cliente]
GO
ALTER TABLE [dbo].[segue]  WITH CHECK ADD  CONSTRAINT [FK_segue_direito_consumidor] FOREIGN KEY([ID_direto_cliente])
REFERENCES [dbo].[direito_consumidor] ([ID_direito_cliente])
GO
ALTER TABLE [dbo].[segue] CHECK CONSTRAINT [FK_segue_direito_consumidor]
GO
ALTER TABLE [dbo].[segue]  WITH CHECK ADD  CONSTRAINT [FK_segue_segue] FOREIGN KEY([ID_segue])
REFERENCES [dbo].[segue] ([ID_segue])
GO
ALTER TABLE [dbo].[segue] CHECK CONSTRAINT [FK_segue_segue]
GO
ALTER TABLE [dbo].[segue]  WITH CHECK ADD  CONSTRAINT [FK_segue_status_voo] FOREIGN KEY([ID_status_voo])
REFERENCES [dbo].[status_voo] ([ID_status_voo])
GO
ALTER TABLE [dbo].[segue] CHECK CONSTRAINT [FK_segue_status_voo]
GO
ALTER TABLE [dbo].[solicitacao_para_uso]  WITH CHECK ADD  CONSTRAINT [FK_solicitacao_para_uso_passagem] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[solicitacao_para_uso] CHECK CONSTRAINT [FK_solicitacao_para_uso_passagem]
GO
ALTER TABLE [dbo].[solicitacao_para_uso]  WITH CHECK ADD  CONSTRAINT [FK_solicitacao_para_voo_cliente] FOREIGN KEY([ID_cliente_usa])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[solicitacao_para_uso] CHECK CONSTRAINT [FK_solicitacao_para_voo_cliente]
GO
ALTER TABLE [dbo].[solicitacao_para_uso]  WITH CHECK ADD  CONSTRAINT [FK_solicitacao_para_voo_cliente1] FOREIGN KEY([ID_cliente_altera])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[solicitacao_para_uso] CHECK CONSTRAINT [FK_solicitacao_para_voo_cliente1]
GO
ALTER TABLE [dbo].[tem1]  WITH CHECK ADD  CONSTRAINT [FK_tem1_conexao] FOREIGN KEY([ID_conexao])
REFERENCES [dbo].[conexao] ([ID_conexao])
GO
ALTER TABLE [dbo].[tem1] CHECK CONSTRAINT [FK_tem1_conexao]
GO
ALTER TABLE [dbo].[tem1]  WITH CHECK ADD  CONSTRAINT [FK_tem1_passagem] FOREIGN KEY([ID_Passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[tem1] CHECK CONSTRAINT [FK_tem1_passagem]
GO
ALTER TABLE [dbo].[tem3]  WITH CHECK ADD  CONSTRAINT [FK_tem3_destino] FOREIGN KEY([ID_destino_localicao])
REFERENCES [dbo].[destino] ([ID_destino_localicao])
GO
ALTER TABLE [dbo].[tem3] CHECK CONSTRAINT [FK_tem3_destino]
GO
ALTER TABLE [dbo].[tem3]  WITH CHECK ADD  CONSTRAINT [FK_tem3_passagem] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[tem3] CHECK CONSTRAINT [FK_tem3_passagem]
GO
ALTER TABLE [dbo].[tem3]  WITH CHECK ADD  CONSTRAINT [FK_tem3_voo] FOREIGN KEY([ID_voo])
REFERENCES [dbo].[voo] ([ID_voo])
GO
ALTER TABLE [dbo].[tem3] CHECK CONSTRAINT [FK_tem3_voo]
GO
ALTER TABLE [dbo].[usada]  WITH CHECK ADD  CONSTRAINT [FK_usada_passagem] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[usada] CHECK CONSTRAINT [FK_usada_passagem]
GO
ALTER TABLE [dbo].[usada]  WITH CHECK ADD  CONSTRAINT [FK_usada_voo] FOREIGN KEY([ID_voo])
REFERENCES [dbo].[voo] ([ID_voo])
GO
ALTER TABLE [dbo].[usada] CHECK CONSTRAINT [FK_usada_voo]
GO
ALTER TABLE [dbo].[usufrui]  WITH CHECK ADD  CONSTRAINT [FK_usufrui_cliente1] FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[usufrui] CHECK CONSTRAINT [FK_usufrui_cliente1]
GO
ALTER TABLE [dbo].[usufrui]  WITH CHECK ADD  CONSTRAINT [FK_usufrui_dependentes] FOREIGN KEY([ID_dependentes])
REFERENCES [dbo].[dependentes] ([ID_dependentes])
GO
ALTER TABLE [dbo].[usufrui] CHECK CONSTRAINT [FK_usufrui_dependentes]
GO
ALTER TABLE [dbo].[voo]  WITH CHECK ADD  CONSTRAINT [FK_voo_status_voo] FOREIGN KEY([ID_status_voo])
REFERENCES [dbo].[status_voo] ([ID_status_voo])
GO
ALTER TABLE [dbo].[voo] CHECK CONSTRAINT [FK_voo_status_voo]
GO
ALTER TABLE [dbo].[voo]  WITH CHECK ADD  CONSTRAINT [FK_voo_tipo_aviao] FOREIGN KEY([ID_tipo_aviao])
REFERENCES [dbo].[tipo_aviao] ([ID_tipo_aviao])
GO
ALTER TABLE [dbo].[voo] CHECK CONSTRAINT [FK_voo_tipo_aviao]
GO
ALTER TABLE [dbo].[voo]  WITH CHECK ADD  CONSTRAINT [FK_voo_voo] FOREIGN KEY([ID_passagem])
REFERENCES [dbo].[passagem] ([ID_passagem])
GO
ALTER TABLE [dbo].[voo] CHECK CONSTRAINT [FK_voo_voo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "compra"
            Begin Extent = 
               Top = 0
               Left = 37
               Bottom = 130
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "forma_pagamento"
            Begin Extent = 
               Top = 121
               Left = 252
               Bottom = 251
               Right = 439
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "passagem"
            Begin Extent = 
               Top = 76
               Left = 455
               Bottom = 206
               Right = 641
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "cliente"
            Begin Extent = 
               Top = 0
               Left = 658
               Bottom = 130
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Compra_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Compra_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Compra_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "conexao"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tem1"
            Begin Extent = 
               Top = 12
               Left = 289
               Bottom = 125
               Right = 459
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "passagem"
            Begin Extent = 
               Top = 6
               Left = 544
               Bottom = 136
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Conexao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Conexao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[28] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "direito"
            Begin Extent = 
               Top = 211
               Left = 877
               Bottom = 324
               Right = 1047
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "direito_consumidor"
            Begin Extent = 
               Top = 182
               Left = 225
               Bottom = 278
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "segue"
            Begin Extent = 
               Top = 3
               Left = 557
               Bottom = 133
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cliente"
            Begin Extent = 
               Top = 40
               Left = 824
               Bottom = 170
               Right = 1003
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "possui"
            Begin Extent = 
               Top = 194
               Left = 610
               Bottom = 307
               Right = 780
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "status_voo"
            Begin Extent = 
               Top = 17
               Left = 218
               Bottom = 130
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "voo"
            Begin Extent = 
               Top = 102
               Left = 15
               Bottom = 232
               Right = 185
            End
            DisplayFl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Direito_cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 1080
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Direito_cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Direito_cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "funcionario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "passagem"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Funcionario_Vende_Passagem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Funcionario_Vende_Passagem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cliente"
            Begin Extent = 
               Top = 17
               Left = 46
               Bottom = 147
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "solicitacao_para_uso"
            Begin Extent = 
               Top = 0
               Left = 330
               Bottom = 130
               Right = 540
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1935
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Solicita_para_Uso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Solicita_para_Uso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tipo_aviao"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "voo"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Tipo_Aviao_voo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Tipo_Aviao_voo'
GO
USE [master]
GO
ALTER DATABASE [Trabalho-Pronto (1)] SET  READ_WRITE 
GO
