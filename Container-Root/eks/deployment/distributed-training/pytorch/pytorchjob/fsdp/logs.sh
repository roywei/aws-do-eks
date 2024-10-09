#!/bin/bash

. .env

kubectl logs -f $JOB_NAME 

