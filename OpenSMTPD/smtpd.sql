DROP TABLE IF EXISTS valias;
DROP TABLE IF EXISTS vdomains;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS userinfo;

CREATE TABLE IF NOT EXISTS valias (
  alias_id INT(8) NOT NULL AUTO_INCREMENT,
  addr varchar(42) NOT NULL,
  alias varchar(42) NOT NULL,
  PRIMARY KEY (alias_id)
) ENGINE=InnoDB ;

CREATE TABLE IF NOT EXISTS vdomains (
  domain_id INT(11) NOT NULL AUTO_INCREMENT,
  domain VARCHAR(42) NOT NULL,
  PRIMARY KEY (domain_id)
) ENGINE=InnoDB ;

CREATE TABLE IF NOT EXISTS userinfo (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  user VARCHAR(42) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  uid INT(42) DEFAULT 106,
  gid INT(42) DEFAULT 107,
  maildir VARCHAR(255) DEFAULT '/var/lib/opensmtpd/empty',
  PRIMARY KEY (user_id)
 ) ENGINE=InnoDB ;

CREATE TABLE IF NOT EXISTS users (
  user_id INT(8) NOT NULL AUTO_INCREMENT,
  username TEXT NOT NULL,
  domain TEXT NOT NULL,
  mailbox TEXT NOT NULL,
  password TEXT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB ;
