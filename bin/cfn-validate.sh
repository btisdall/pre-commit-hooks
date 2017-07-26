#!/bin/sh
if ! which aws >/dev/null 2>&1; then
  echo "aws executable not found"
  exit 1
fi

for i in "$@"; do
  grep -q AWSTemplateFormatVersion $i || continue
  echo "Validating template '$i' ..."
  aws cloudformation validate-template --template-body file://$i
done
