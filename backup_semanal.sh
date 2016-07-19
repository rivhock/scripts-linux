#!/bin/bash

#====BACKUP SEMANAL DO MAIL ====#
mkdir /var/backups/mail_semanal/"$(date +%Y_%U)"
mv /var/backups/mail_diario/*  /var/backups/mail_semanal/"$(date +%Y_%U)"
tar -zcvf /var/backups/mail_semanal/"$(date +%Y_%U)".tar.gz /var/backups/mail_semanal/"$(date +%Y_%U)"
rm -r /var/backups/mail_semanal/"$(date +%Y_%U)"

#====BACKUP SEMANAL WWW ====#
mkdir /var/backups/www_semanal/"$(date +%Y_%U)"
mv /var/backups/www_diario/*  /var/backups/www_semanal/"$(date +%Y_%U)"
tar -zcvf /var/backups/www_semanal/"$(date +%Y_%U)".tar.gz /var/backups/www_semanal/"$(date +%Y_%U)"
rm -r /var/backups/www_semanal/"$(date +%Y_%U)"

#====BACKUP SEMANAL MYSQL ====#
mkdir /var/backups/mysql_semanal/"$(date +%Y_%U)"
mv /var/backups/mysql_diario/*  /var/backups/mysql_semanal/"$(date +%Y_%U)"
tar -zcvf /var/backups/mysql_semanal/"$(date +%Y_%U)".tar.gz /var/backups/mysql_semanal/"$(date +%Y_%U)"
rm -r /var/backups/mysql_semanal/"$(date +%Y_%U)"
