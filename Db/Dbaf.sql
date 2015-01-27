/*base de datos:  BD_AF*/

CREATE TABLE AFDETALLE
( 
	CODSOLI              integer  NOT NULL ,
	CODPERF              integer  NOT NULL ,
	CANSOLI              int  NOT NULL 
)
go



ALTER TABLE AFDETALLE
	ADD CONSTRAINT XPKFSP002 PRIMARY KEY  CLUSTERED (CODSOLI ASC,CODPERF ASC)
go



CREATE TABLE AFDOCUMENTO
( 
	CODDOC               integer  NOT NULL ,
	DESDOC               varchar(50)  NOT NULL 
)
go



ALTER TABLE AFDOCUMENTO
	ADD CONSTRAINT XPKFSP005 PRIMARY KEY  CLUSTERED (CODDOC ASC)
go



CREATE TABLE AFPERFIL
( 
	CODPERF              integer  NOT NULL ,
	DESPERF              varchar(100)  NOT NULL 
)
go



ALTER TABLE AFPERFIL
	ADD CONSTRAINT XPKFSP003 PRIMARY KEY  CLUSTERED (CODPERF ASC)
go



CREATE TABLE AFPERSONAL
( 
	CODPERT              integer  NOT NULL ,
	CODTPG               integer  NOT NULL ,
	PERTNOM              varchar(100)  NOT NULL ,
	PERTFNA              datetime  NULL ,
	PERTDIR              varchar(100)  NULL ,
	PERTTELF             varchar(50)  NULL ,
	PERTMAIL             varchar(100)  NULL ,
	PERTSEX              int  NULL ,
	CODPERF              integer  NULL ,
	CODDOC               integer  NULL ,
	PERTNDOC             varchar(50)  NOT NULL ,
	PERTSTDO             INT  NOT NULL ,
	PERTNOTA             decimal(5,2)  NULL ,
	CODSOLI              integer  NOT NULL 
)
go



ALTER TABLE AFPERSONAL
	ADD CONSTRAINT XPKFSP006 PRIMARY KEY  CLUSTERED (CODPERT ASC,CODTPG ASC,CODSOLI ASC)
go



CREATE TABLE AFSOLICITUD
( 
	CODSOLI              integer  NOT NULL ,
	DESSOLI              varchar(100)  NOT NULL 
)
go



ALTER TABLE AFSOLICITUD
	ADD CONSTRAINT XPKFSP001 PRIMARY KEY  CLUSTERED (CODSOLI ASC)
go



CREATE TABLE AFTIPOUSUARIO
( 
	AFUCOD               integer  NOT NULL ,
	AFUDES               varchar(50)  NULL 
)
go



ALTER TABLE AFTIPOUSUARIO
	ADD CONSTRAINT XPKFSP007 PRIMARY KEY  CLUSTERED (AFUCOD ASC)
go



CREATE TABLE AFTPROGRAM
( 
	CODTPG               integer  NOT NULL ,
	CODSOLI              integer  NOT NULL ,
	DESTPG               varchar(100)  NULL ,
	TPGFIN               datetime  NULL ,
	TPGFFI               datetime  NULL ,
	TPGCAN               int  NOT NULL ,
	TPGENC               varchar(100)  NOT NULL 
)
go



ALTER TABLE AFTPROGRAM
	ADD CONSTRAINT XPKFSP004 PRIMARY KEY  CLUSTERED (CODSOLI ASC,CODTPG ASC)
go



CREATE TABLE AFUSUARIO
( 
	AFSCOD               char(18)  NOT NULL ,
	USUDES               varchar(50)  NOT NULL ,
	USUCLV               varchar(50)  NOT NULL ,
	USUNOM               varchar(100)  NOT NULL ,
	AFUCOD               integer  NOT NULL 
)
go



ALTER TABLE AFUSUARIO
	ADD CONSTRAINT XPKSP008 PRIMARY KEY  CLUSTERED (AFSCOD ASC,AFUCOD ASC)
go

