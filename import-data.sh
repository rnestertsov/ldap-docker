#!/bin/sh

docker exec my-ldap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=company,dc=com" -f /data/ldif/00-startup.ldif -c -w password
docker exec my-ldap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=company,dc=com" -f /data/ldif/01-output-groups.ldif -c -w password
docker exec my-ldap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=company,dc=com" -f /data/ldif/02-output-users.ldif -c -w password
