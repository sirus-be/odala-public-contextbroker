## NGB database for scorpio

### connect to the database on the cluser
``` 
kubectl -n database exec -it timescaledb-0 -- psql -U postgres” to log in to the database as user “postgres”
``` 


### Create and configure the the database
When you have a connection to the database with the above command, you can start executing queries on the database as user postgres.
There is also a sql script [create_database_ngb.sql](create_database_ngb.sql).

``` SQL
create database ngb;
create user ngb with password 'PASSWORD';
alter database ngb owner to ngb;
grant all privileges on database ngb to ngb;
alter role ngb superuser;
create extension postgis schema public;
```

__Pro tip__: make sure you use the ; at the end of your SQL statements.

