# ![Rails (Christmas) Wrapping Order App](project-logo.png)

> Rails App for a (Christmas) Wrapping Order Interface

# Getting started

To get the Rails server running locally:

- Clone this repo
- `bundle install` to install all dependencies
- `rake db:create` to create the default database
- `rake db:migrate` to make all database migrations
- `rails s` to start the local server



# Code Overview

## Dependencies

- [Rails](https://rubyonrails.org/) - Server-side web application framework
- [Rails installation help](https://gorails.com/setup/) - Guide to setting up a Ruby on Rails development environment
- [Devise](https://github.com/plataformatec/devise) - For Authentication
- [Simple Form](https://github.com/plataformatec/simple_form) - Rails forms made easy
- [Bootstrap](https://getbootstrap.com/) - Front-end framework

## Structure

- `app/models` - Contains the database models for the application where we can define methods, validations, queries, and relations to other models.
- `app/views` - Contains templates for generating the JSON output for the API
- `app/controllers` - Contains the controllers where requests are routed to their actions, where we find and manipulate our models and return them for the views to render.
- `config` - Contains configuration files for our Rails application and for our database, along with an `initializers` folder for scripts that get run on boot.
- `db` - Contains the migrations needed to create our database schema.
