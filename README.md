# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

<!-- curl -X POST http://localhost:3000/api/v1/users \
  -H "Content-Type: application/json" \
  -d '{"user": {"email": "bhushan7668@gmail.com", "mobile": "9767597737", "password": "Bhushan@22", "role": "buyer"}}' -->

<!-- CREATE USER bhushan7668 WITH PASSWORD 'Bhush@n22'; -->
<!-- GRANT ALL PRIVILEGES ON DATABASE marketplace_client_development TO bhushan7668; -->

#connect to postgresql db
psql -h $DB_HOST -U $DB_USER -d $DB_NAME

#db commands
#list dbs => /l
#connect to db with specific user => \c dbName userName
#change db privileges to specific user => ALTER USER username WITH SUPERUSER;
