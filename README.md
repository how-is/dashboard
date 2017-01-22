[![Stories in Ready](https://badge.waffle.io/how-is/dashboard.png?label=ready&title=Ready)](https://waffle.io/how-is/dashboard)
[![Build
Status](https://travis-ci.org/how-is/dashboard.svg?branch=master)](https://travis-ci.org/how-is/dashboard)

# how\_is dashboard

A dashboard that automates generating how\_is reports for multiple projects.


# Dependencies

* Ruby 2.3.3
* Rails 5
* Postgres


## Development

First, clone the repository locally and install Postgres.

Note: If you're developing in Bash on Windows, you'll need to install
the Postgres server _outside_ of Bash on Windows and connect over the
network, because the Windows Subsystem for Linux doesn't implement UNIX
sockets fully. (It appears this will be fixed soon, however.)

Then:

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rails s
```

If you plan to also develop how\_is locally, you can run the following
to make the dashboard use your local copy of how\_is (changing the path
to point to how\_is):

```
$ bundle config local.how_is /path/to/how_is
```


## Configuration

???


## Deployment

Uses Heroku with the Heroku Postgress and Heroku Scheduler addons.

TODO: Set up a 'Deploy to Heroku' button.


## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/how-is/dashboard. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected
to adhere to the [Contributor Covenant](http://contributor-covenant.org)
code of conduct.


## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).
