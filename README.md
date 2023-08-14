# tracker_phase2_elink_database_dev

Database (development version) for e-links for the CMS inner tracker phase 2 upgrade.

## MySQL

Start mysql session from command line:

without sudo:
```
mysql --user=root --password
mysql --user=root --password=<my_password>
```

with sudo:
```
sudo mysql --password
sudo mysql --password=<my_password>
```

## SQL

SQL commands:
```
show databases;
use <database_name>;
show tables;
describe <table_name>;
select * from <table_name>;
```

Delete table (be careful):
```
drop table <table_name>;
```

