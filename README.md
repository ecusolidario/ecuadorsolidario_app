Ecuadorsolidario App
================

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.3
- Rails 4.2.6
- Posgresql

Getting Started
---------------
cp config/secrets.yml.example config/secrets.yml

Configura el SMTP en secrets.yml y config/enviroment/development.rb para que funcione el registro de usuarios.

bundle install
rake db:create

Iniciar servidor:
-------------------------

passenger start

http://0.0.0.0:3000

Colaborar:
----------

Para colaborar consulta los issues, ¡si hay alguno que vayas a desarrollar, comenta para que no se duplique trabajo!
