#!/usr/bin/env bash

if [[ -d flask ]]; then
    echo 'Virtualenv already exists. Bailing!'
    exit
fi

# Create virtualenv
python3 -m 'venv' flask
source flask/bin/activate

# Install all the cruft we typically use.
pip install flask
pip install flask-sqlalchemy
pip install sqlalchemy-migrate
pip install flask-login
pip install flask-mail
pip install flask-whooshalchemy
pip install flask-wtf
pip install ipython

# Pull down the latest bootstrap/jquery assets we'll probably be using.

