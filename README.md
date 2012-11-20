# PatentSnapper

[![Build Status](https://secure.travis-ci.org/doolin/patentsnapper.png)](http://travis-ci.org/doolin/patentsnapper)
[![Code
Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/doolin/patentsnapper)
[![Still
maintained](http://stillmaintained.com/stillmaintained/stillmaintained.png)](http://stillmaintained.com/doolin/patentsnapper)
[![Dependency Status](https://gemnasium.com/doolin/patentsnapper.png)](https://gemnasium.com/doolin/patentsnapper)


## Database provisioning

* [Using rake to handle sqlite3 to postgres
conversion](http://blog.renaud.io/2011/10/05/rails-3-migrate-your-data-from-sqlite-to-postgresql/)

* `lib/tasks/importdummy.rake` handles importing the 3000 record
pre-production test data.

* `db/csv/*.csv` are the 3000 record files corresponding to tables in
the database. These are loaded using the rake task.

* Getting the data up to the server is best done with the heroku
`pgbackups:restore` command.
