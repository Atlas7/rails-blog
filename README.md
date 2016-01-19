A simple Rails blog (web application) inspired by the [Ruby-on-Rails Get-started Tutorial](http://guides.rubyonrails.org/getting_started.html).

It illustrates:

- How to install Rails, create a new Rails application, and connect your application to a database (SQLite3).
- The general layout of a Rails application (CRUD - Create, Read, Update, Delete)
- The basic principles of MVC (Model, View, Controller) and RESTful design.
- How to quickly generate the starting pieces of a Rails application.

# Pre-requisites

My development environment:

- MacBookPro (OSX 10.11.x El Capitian, 64-bit, 16GB RAM, 2.8 GHz Intel Core i7)
- ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin15]
- Rails 4.2.4

# Instruction

Open a terminal on your machine.

Git clone this repository

```
git clone https://github.com/Atlas7/rails-blog
```

Navigate to the repository.

```
cd rails-blog
```

Setup SQLite3 databases

```
bin/rake db:migrate
```

Start a local web server.

```
bin/rails server
```

Navigate to [http://localhost:3000/](http://localhost:3000/).

Kill the web server by hitting `Ctrl` + `c`.

# Basic HTTP Authentication

Basic HTTP Authentication has been added to the controller files `comments_controller.rb` and `articles_controller.rb`, under `app/controllers`.

For scenario like edit/delete articles/comments, the browser may ask you for a username and password. The default username and password is `god` and `apple` respectively. This type of basic authentication is only used here for illustration sake. For production mode a more sophisicated approach should be used - this is out of the scope of this repository / exercise.

# What next

Try out more tutorials at the [Ruby-on-Rails Guide website](http://guides.rubyonrails.org/)

# Deploying to Heroku

This is a to-do-list item. This [Deploy a Rails Hello World App on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails4) may help.
