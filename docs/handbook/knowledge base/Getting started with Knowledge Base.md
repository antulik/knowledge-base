# Getting started with knowledge base

If you are new with VS Code, see how to [[VS Code introduction]].
You can read more about published version [[Knowledge base online web version]].

## Setup

See [[index|Home -> Setup]]

## Content Editing

### VS Code Shortcuts

| Shortcut               | Action                     |
| ---------------------- | -------------------------- |
| ++cmd+b++              | makes the selection bold   |
| ++cmd+i++              | makes the selection italic |
| ++cmd+option+v++       | to paste clipboard image   |
| ++option+shift+f++     | formats a table            |
| ++cmd+option+v++       | paste image from clipboard |
| ++cmd+shift+b++        | open published web version |
| Paste url to selection | make selected text a link  |

See [[Markdown syntax]]

### Wikilinks

Wikilinks are the internal links that connect the files in your knowledge base.

Remember, with ++cmd++ + `Click` on a wikilink you can navigate to the note, or create it (if the link is a placeholder).

- `［[Example]]` - simple link
- `［[Example|Text]]` - link with a custom text
- `［[Example#header]]` - link to a header in a target file
- `［[#header]]` - link to a header in the current file
<!-- Note the example is using special ［ symbol to avoid link conversion in preview and web -->    

### Images

You can also paste images, just press ++cmd+option+v++ to create the image file and link to it from your note. See [[How to paste images from clipboard]].

All attachments should be stored in `/docs/attachments`.

<!-- Disabled for now
### Spellchecker

Misspelled words are highlighted, like hellow.
You can place the cursor on top of the word, and press ++cmd+period++ for suggestions on how to fix the problem.
For more information go to the [Spellright extension page](https://marketplace.visualstudio.com/items?itemName=ban.spellright).
-->

### Todo Example

- [x] This is an example of a todo list item that's complete
- [ ] This one is not completed yet
- [ ] You can mark it completed by pressing ++option+c++ when your cursor is on this line (VS Code only)
    - [ ] You can also select multiple lines and mark them all at once!

## How it works?

- Knowledge base is a git repo with markdown files
- It is preconfigured for VS Code
    - See `.vscode` folder
- VS Code default configuration
    - hides non-document files
    - has the same sort order as [[Knowledge base online web version|published version]] 
    - limits the number of opened tabs
    - configures plugins
- Auto commit on save is implemented with `Run on Save` plugin which uses `bin/autocommit` script
- Open web version feature is configured in `.vscode/tasks.json` as a default build task, which executes `bin/open-web` script

### Plugins

See `.vscode/extensions.json` for the latest recommended plugins list.

- [Markdown Memo](https://github.com/svsool/vscode-memo) - The main plugin for linking
- [Markdown All in One](https://github.com/yzhang-gh/vscode-markdown) better markdown editing
- [Run on Save](https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave) commit on save
- [Paste Image](https://github.com/mushanshitiancai/vscode-paste-image) paste images
- [Markdown Mermaid](https://github.com/mjbvz/vscode-markdown-mermaid) Support for [mermaid.js](https://mermaid-js.github.io/mermaid/#/)
- [Spell Right](https://github.com/bartosz-antosik/vscode-spellright) spell checker
- [VS Live Share](https://visualstudio.microsoft.com/services/live-share/) collaborate on the document
- Not used
    - [GitDoc](https://github.com/lostintangent/gitdoc) auto commit, push, pull
