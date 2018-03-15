DROP TABLE award IF EXISTS ;

CREATE TABLE award(
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  award_name VARCHAR(20) NOT NULL
);

DROP TABLE entry IF EXISTS;

CREATE TABLE entry (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  entry_name VARCHAR(100) NOT NULL,
  entry_prize VARCHAR(10),
  level1 INTEGER DEFAULT 0,
  level2 INTEGER DEFAULT 0,
  level3 INTEGER DEFAULT 0,
  award_id INTEGER NOT NULL
);

DROP TABLE attach IF EXISTS;

CREATE TABLE attach (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  attach_name VARCHAR(100) NOT NULL,
  entry_id INTEGER NOT NULL
);

DROP TABLE expert IF EXISTS ;

CREATE TABLE expert (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  num VARCHAR(20) NOT NULL,
  ip VARCHAR(20) NOT NULL,
  voted INTEGER DEFAULT 0
);

DROP TABLE entry_expert IF EXISTS ;

CREATE TABLE entry_expert (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  entry_id INTEGER NOT NULL ,
  expert_id INTEGER NOT NULL ,
  level1 INTEGER NOT NULL,
  level2 INTEGER NOT NULL ,
  level3 INTEGER NOT NULL
);