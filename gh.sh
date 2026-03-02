#!/bin/sh

if  ! gh auth status | grep Active ; then
  gh auth login -c -w -p ssh
fi

