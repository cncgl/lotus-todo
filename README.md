# lotus-todo

[![Build Status](https://travis-ci.org/cncgl/lotus-todo.svg)](https://travis-ci.org/cncgl/lotus-todo)
[![Coverage Status](https://coveralls.io/repos/cncgl/lotus-todo/badge.svg?branch=master&service=github)](https://coveralls.io/github/cncgl/lotus-todo?branch=master)
[![Code Climate](https://codeclimate.com/github/cncgl/lotus-todo/badges/gpa.svg)](https://codeclimate.com/github/cncgl/lotus-todo)
[![Issue Count](https://codeclimate.com/github/cncgl/lotus-todo/badges/issue_count.svg)](https://codeclimate.com/github/cncgl/lotus-todo)

Todo Application on [Lotus](http://lotusrb.org/)

## Install

```
$ bundle
```

Prepare database PostgreSQL

```
$ bundle exec lotus db create
$ bundle exec lotus db migrate
```

## Usage

```
$ bundle exec lotus server
```
visit http://localhost:2300/todos

## Test

```
$ LOTUS_ENV=test bundle exec lotus db create
$ LOTUS_ENV=test bundle exec lotus db migrate
$ bundle exec rspec
```

## Lisence
MIT
