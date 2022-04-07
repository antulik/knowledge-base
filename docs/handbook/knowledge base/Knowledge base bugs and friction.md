# Knowledge base bugs and friction

This is a list of known issues with the VS Code plugins

## Web version
- Documents embedded with IFrame only work with third party cookies enabled.
    - Most browsers block third-party cookies by default, but domain exceptions can be added manually in a browser.
- Documents that start with `Text: blah` are not rendered on the webpage (no idea why)
    - a work around to make it list `- Text: blah`
- Giscus (comments & discussions)
    - Auto create discussions ([bug](https://github.com/giscus/giscus/issues/292))
    - Use self-hosted server to increase privacy

## Mermaid
- Editing mermaid graph in a long document changes the editor scroll position.
    - (done) Work around to [disable markdown scroll sync](https://stackoverflow.com/questions/61831197/vscode-jumpiness-when-editing-markdown-and-preview-pane-is-open)

## Run on Save + bin/autocommit
- This is an alternative solution to GitDoc. It commits and pushes on save.
- Currently it commits everything, not just file saved
    - Can be changed
- There is no auto pulling functionality and the user need to click Sync button/command manually.

## Memo extension
- (fixed) Wikilink clicks [don't work](https://github.com/svsool/vscode-memo/issues/481) in preview mode. 
- Does not support github previews
    - Not a big deal, now we are publishing pages.

## GitDoc (Not used anymore)
- GitDoc commit frequency is unclear. It should commit on save and on close, but that's not the case. It looks like it commits after document is no longer changed.
- GitDoc stuck at "Pulling" mode. Happened after computer went to sleep.


## Foam extension (Not used anymore)

- Foam sometimes adds double footer for the links. Manually fixed by removing one.
- Renaming file does not update references. You have to do manual search and replace.
- Moving files is similar to renaming, but you need to manually resave the file to update Markdown footnotes.
