#!/bin/bash

file="routes.py"
source=$(readlink -m ./web2py/routes.py)
destination="/home/www-data/web2py/routes.py"

# -L means symbolic link
if [ ! -L $destination ] ; then
    # remove it if not symbolic link & create one
    rm $destination
    ln -s $source $destination
fi

# reload uwsgi
sudo /etc/init.d/uwsgi reload
