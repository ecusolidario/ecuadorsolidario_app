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

http://0.0.0.0:300

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
