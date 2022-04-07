---
github: 3
---

# Knowledge base online web version

It is available on https://pi-knowledge-base.herokuapp.com . New version is automatically published on each commit. You need to login with your PI google account to access it.

The categories follow the file order and structure.

## Shortcuts

* ++f++ , ++s++ , ++slash++ : open search dialog
    * ++arrow-down++ , ++arrow-up++ : select next / previous result
    * ++esc++ , ++tab++ : close search dialog
    * ++enter++ : follow selected result
* ++p++ , ++comma++ : go to previous page
* ++n++ , ++period++ : go to next page

## Comments & Discussions

Knowledge base is integrated with Github Discussions through [Giscus](https://giscus.app/). Currently there is [limitation](https://github.com/giscus/giscus/issues/292) and a discussion can only be started on Github. Once you start the discussion, you can embed it to the post with Markdown metadata. 

Place this at the top of Markdown file. See this file as an example.

```
---
github: DISCUSSION_NUMBER
---
```

## Embedded content and iframes

Some browsers block third party cookies by default, which stops iframes to be loading. You can add browser exceptions to fix that. This is a list of domains we recommend to allow third party cookies:

- miro.com
- docs.google.com

In Firefox go to Preferences -> Privary & Security -> Cookies and Site Data -> click Manage Exceptions -> Enter domain name -> click Allow. 

## How it works?

- Markdown documents are converted to static website with [mkdocs](https://www.mkdocs.org/) tool
- `mkdocs` on its own is very minimal, so we are using [mkdocs material](https://squidfunk.github.io/mkdocs-material/) template. It adds a lot of functionality out of the box.
    - See `mkdocs.yml`
- Becase we need to restrict access to the online docs we host the documents on [[Heroku]]
    - New version is published on each commit
    - Heroku add has three buildpacks
        - 1. Ruby: to run web server
        - 2. Python: to run `mkdocs`
        - 3. weibeld/heroku-buildpack-run: to generate static side during Heroku build phase
- The pages are served with a simple web server which implements google authentication. 
    - See `config.ru`
    - Web server also handles redirects when a page is moved
- `giscus` integration is implemented with template overrides, see `overrides` folder
