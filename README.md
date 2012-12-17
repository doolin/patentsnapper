# Patent Server

[![Build Status](https://secure.travis-ci.org/doolin/patentsnapper.png)](http://travis-ci.org/doolin/patentsnapper)
[![Code
Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/doolin/patentsnapper)
[![Still
maintained](http://stillmaintained.com/stillmaintained/stillmaintained.png)](http://stillmaintained.com/doolin/patentsnapper)
[![Dependency Status](https://gemnasium.com/doolin/patentsnapper.png)](https://gemnasium.com/doolin/patentsnapper)


Patent Server is an application written to allow JSON delivery of USPTO
inventor and patent data. The application operates via an API accessible
via arbitrary HTTP clients providing a valid query and valid API key.

### How to use Patent Server

* Register for an account.
* Save your API key for use on patent queries.
* Issue valid queries using API key.



## Contributing

Patent Server is open source software written to provide easy public
access to patent data in an accessible form. Contributing is easy:
fork the code, add new feature(s), issue pull requests.



### Test database provisioning

* [Using rake to handle sqlite3 to postgres
conversion](http://blog.renaud.io/2011/10/05/rails-3-migrate-your-data-from-sqlite-to-postgresql/)

* `lib/tasks/importdummy.rake` handles importing the 3000 record
pre-production test data.

* `db/csv/*.csv` are the 3000 record files corresponding to tables in
the database. These are loaded using the rake task.

* Getting the data up to the server is best done with the heroku
`pgbackups:restore` command.
