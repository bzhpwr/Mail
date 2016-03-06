# Mail
Mail conf repository

## Opensmtpd

You need to install opensmtpd-extras if you wan't to use MySQL backend. In debian I have only found it in testing.

Change smtpd.conf and mysql.conf to reflect your config.

### MySQL

You can restore smtpd.sql in database name 'smtpd' and users.sql in this database.
```
mysql -uroot -p -e 'create database smtpd'
mysql -uroot -p -e "GRANT ALL ON smtpd.* to 'smtpduser'@'127.0.0.1' IDENTIFIED BY 'smtpdpass'"
mysql -uroot -p smtpd < smtpd.sql
mysql -uroot -p smtpd < users.sql
mysql -uroot -p -e 'FLUSH PRIVILEGES'
```

### Dovecot

You need this packages:
- dovecot-core
- dovecot-imapd 
- dovecot-lmtpd 
- dovecot-mysql 
- dovecot-sieve 
- dovecot-managesieved

Dovecot use smtpd database.

Change **connect** line in dovecot-sql.conf.ext to reflect your configuration

### Users

You need only one system user named **vmail** .
You can create it whith this cmd:

```
useradd -m -r vmail
```

To create user, you need to generate a SHA512 encrypted password whith smtpctl or doveadm like this:

```
doveadm pw -s SHA512-CRYPT 
# Or: 
smtpctl encrypt <password>
# Result hash must start with $6$
```

