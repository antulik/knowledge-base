# 2021-12 Knowledge base comments

## Problem

Sometime we want to collaborate on a document. For example leave suggestions or comments. There are different types of collaboration based on the level of interactivity. 

## Use cases and options

Below is a list of use cases and tool options. Each option has a ration to how well suited it is on a scale of 5, e.g. `(5)` is the best fit.

### Live collaboration

Multiple people actively discuss and change document at the same time.

- (5) Video call + VS Code Live Share

### Only Review

Review document once, no further discussions.

- (4) Markdown HTML comments
    - pros: already supported
    - cons: will be issues with parallel editing
- See Review + Async discussion

### Review + Async discussion

Review document and have an ongoing async discussion about each comment.

- (4) Github Discussions
    - pros: already using
    - cons: UX is not optimised for inline comments
- (4) Inline comment system, e.g. https://wpdiscuz.com/demo/
    - pros: enhances KB instead of replacing
    - cons: new system, yet to be tested
- (3) Google Docs
    - pros: good commenting UX
    - cons: content needs to be moved across systems, no general comments
- (3) Confluence
    - pros: good inline commenting
    - cons: content needs to be moved across systems, notification system sucks
- (2) External comment system e.g. Disqus
    - cons: no inline comments, new service

### Async discussion

Discuss ongoing topics asynchronously over long period of time.

- (4) Github Discussions
    - pros: already using
    - cons: UX yet to be tested
- (4) Forum software
    - pros: best async experience
    - cons: new tool
- (2) Slack
    - pros: existing tool
    - cons: only works for low traffic discussions with one main thread

## Conclusion

We are already in a good position. Our existing tools already provide good experience for: live collaboration, one off reviews, and async discussions.

The area which is lacking is Review + Async discussion. The best bet is to use Github discussions since that could be a tool for all async discussions. Since it's a rare collaboration mode in my experience, copying content to google doc could be an okay option as long as KB copy remains the master version.
