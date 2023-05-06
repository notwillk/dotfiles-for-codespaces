#!/bin/sh

touch ~/.gitconfig

cat > ~/.gitconfig <<- EOM
[color]
  ui = true

[alias]
  git = !git
  st = status --short --branch
  cm = commit -m
  br = branch
  co = checkout
  cp = cherry-pick
  df = diff
  dc = diff --cached
  lol = log --graph --decorate --pretty=oneline --abbrev-commit
  lola = log --graph --decorate --pretty=oneline --abbrev-commit --all
  log-sha = log --format="%H"
  sha = rev-parse HEAD
  log = log --decorate
  head = log --stat --decorate -1 HEAD
  aliases = !git config --get-regexp ^alias | cut -c 7-
  recent = !git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname)' | cut -c 12- | head
  undo = reset --soft HEAD^

[core]
  autocrlf = input

[push]
  default = upstream
EOM