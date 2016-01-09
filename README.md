# lotus-todo

[![Build Status](https://travis-ci.org/cncgl/lotus-todo.svg)](https://travis-ci.org/cncgl/lotus-todo)

Todo Application on Lotus

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

## Lisence
MIT
