
[See /docs/index.md](./docs/index.md)

## Development

VS Code is configured to hide all non-content files. Open project folder in another editor for development.

```sh
pip install -U -r requirements.txt
mkdocs serve
```

To debug full setup locally (like authentication), use

```ruby
bin/dev-server
```

## Deployment

The hosted app is running simple static site server written in Rack so we can have authentication to protect the content. See `config.ru` for server implementation.

To deploy on heroku you need 3 buildbacks in that order:

1. heroku/ruby
2. heroku/python
3. https://github.com/weibeld/heroku-buildpack-run.git

Then add ENV config. 

```
BUILDPACK_RUN="mkdocs build"
GOOGLE_KEY=
GOOGLE_SECRET=
SESSION_SECRET=
```

`SESSION_SECRET` is to be random string, longer is better

