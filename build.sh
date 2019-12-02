#!/bin/sh

pip install -r requirements.txt

cp -r static public
python render.py content.yaml index.html.tpl > public/index.html
