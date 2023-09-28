create database ngb;
create user ngb with password 'PASSWORD';
alter database ngb owner to ngb;
grant all privileges on database ngb to ngb;
alter role ngb superuser;
create extension postgis schema public;
