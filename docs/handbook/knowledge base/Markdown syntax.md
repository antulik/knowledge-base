# Markdown syntax

With Markdown, we can style our notes in a simple way, while keeping the document a simple text file (the best way to future-proof your writings!).

You can see the formatted output by running the `Markdown: Open Preview to the Side` command.

Here is a high level overview of Markdown, for more information on the Markdown syntax [see here](https://commonmark.org/help/).

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

## Text

This is a [link to google](https://www.google.com).

This is a wikilink (aka internal link) to [[How to paste images from clipboard]].

Here is a local image:
![[foam-icon.png]] 

Here is a remote url image:
![image](https://placekitten.com/200/200)


Here is an embedded Wikilink (only works in VS Code):
![[How to paste images from clipboard]]

> this is a block quote
> it can span multiple lines

- list item
- list item
- list item

1. One
2. Two
3. Three

This text is **in bold** and this is *italic*.

The following is a horizontal rule

---

## Table
This is a table:

| Column 1 | Column 2 |
| -------- | -------- |
| R1C1     | R1C2     |
| R2C1     | R2C2     |

## Code

You can `inline code` or

```text
Text block
```

```ruby
# Ruby block
class Struct
  def method()
  end
end
```

```html
<!-- HTML -->
<div id="one">
  Text
</div>
```

```js
// Javascript
function() { 
  console.log("Text");
}
```

## Diagrams

[Mermaid](https://mermaid-js.github.io/mermaid/#/) diagrams are rendered in Markdown Preview. Website preview is yet to be configured.

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
