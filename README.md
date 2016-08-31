# Rails 5 App Template

This is a general purpose Rails 5 app template that is setup to use postgresql.
It includes authentication, authorization and bootstrap styling.

## To use

1. Fork and/or clone this repo from github. `git clone git@github.com:pedrogrande/rails5apptemplate.git`. Apply your own project name by adding the app's name after this command.
2. Enter the created folder: `cd rails5apptemplate`. Or the name you gave your project.
3. If you don't have Postgresql installed locally, you may wish to swap the database to sqlite3. Change this in the Gemfile. This will also require you to update `config/database.yml` to reflect the sqlite3.
3. Run a bundle. `bundle`
4. Edit the database names in `config/database.yml` (only if using Postgresql)
5. Create the databases: `rails db:create`
6. Run the migrations: `rails db:migrate`
7. Optionally, seed the database with a default admin user: `rails db:seed`

## Included Gems

- [devise](https://github.com/plataformatec/devise)
- [simple Form](https://github.com/plataformatec/simple_form)
- [cancancan](https://github.com/CanCanCommunity/cancancan)
- [rolify](https://github.com/RolifyCommunity/rolify)
- [bootstrap-Sass (Bootstrap v3)](https://github.com/twbs/bootstrap-sass)
- [font-awesome-sass](https://github.com/FortAwesome/font-awesome-sass)
- rails_12factor in a production group (for Heroku).

## Customizations

### Devise

A user model is added with default Devise settings.
A devise layout has been created in `app/views/layouts` that puts the devise views in a centered bootstrap panel.

### Simple_form

Simple_form is installed with the --bootstrap flag
Browser validations config setting has been set to true in `config/initializers/simple_form.rb:120`

`config.browser_validations = true`

### Cancancan

The ability model file has been edited to use Rolify has_role? method.

`app/models/ability.rb`

### Bootstrap

Version 3 of Bootstrap is installed through the bootstrap-sass gem.
A navbar partial is located in `app/views/shared`.
A fading alerts partial is located in `app/views/shared`.

### Navbar

The navbar has Rails code to show a **Sign in** link when the user is not signed in. When the user is signed in, they will see a **Dropdown** menu and **Sign out** link.
