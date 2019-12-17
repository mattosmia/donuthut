# DonutHut

This application requires postgresql to be preinstalled and running.

`sudo apt-get install postgresql`
`sudo apt-get install libpq-dev`
`gem install pg`

`sudo service postgresql start`

`sudo -u postgres createuser -s donuthut`
`sudo -u postgres psql`
`   postgres=# create database donuthut_development;``
`   postgres=# create user donuthut with encrypted password 'password1';`
`   postgres=# grant all privileges on database donuthut_development to donuthut;`

database.yml may need to be updated to point to the database, for example
```development:
  <<: *default
  database: donuthut_development
  hostname: localhost
  host: localhost
  user: donuthut
  password: password1```
  
  The Gemfile shows all gems that need to be installed. Everything is then automatically installed with 
  `bundle install`.
  A seeds file has also been provided to be used with `rake db:seed` and populate the database.
  
  
A pipeline has been set up from the develop branch (pre-go-live) directly to Heroku, which was configured specifically for that.
There are two add-ons in Heroku - Heroku Postgres (database) and SendGrid (contact us form).

Ruby runs version 2.6.3, and Rails 5.0.7.2

