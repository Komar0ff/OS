#!/bin/bash
grep -E -r -h "^ACPI.*" /var/log/ > errors.log
grep -E -r -h "^.*[:alnum:]\.[:alpha:]" /home/user/shvalova/lab2/errors.log

