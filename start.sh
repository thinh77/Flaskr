#!/bin/bash

flask --app src init-db
python3 -m flask --app app/src run --host=0.0.0.0