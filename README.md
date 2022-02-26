## Start development locally
1. Install `Postgresql` and `pgAdmin4` or `MySQL` and `MySQLWorkbench` depend on chosen DB.
2. Start `pgAdmin 4`|`MySQLWorkbench` and create local database.
3. Update `migrate-db-local.sh` to provide local database configuration.
4. Install `flyway` on local machine.
5. On Mac OS, open terminal at flyway directory (eg: flyway-7.11.2) (Do these steps similarly on Windows).
6. Run
```shell
ln -s `pwd`/flyway /usr/local/bin
```
7. Open VSCode terminal and run (Note: `repair` and `baseline` are used depend on scenarios. Read the flyway document at the link below for more details.)
```
/bin/bash migrate-db-local.sh
```
8. Open `pgAdmin 4`|`MySQLWorkbench` and check the migration database.
9. Script file `migrate-db.sh` is used in CI/CD flow to migrate DB in prod.

## References
- Read [Flyway Documentation](https://flywaydb.org/documentation/getstarted/) for how to use.
- [PostgreSQL](https://www.postgresql.org/docs/13/index.html)
- [MySQL](https://dev.mysql.com/doc/refman/8.0/en/)


## Notes
- Write a short description (related tickets) and a summary of the changes at the top of sql file for reference.
