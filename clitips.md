---
title: CLI tips
layout: post
subtitle: Page seems long but it will worth a try
date: recently
---
**Session portability**  
Import elements from current session directly into a new local or remote session.
```bash
sudo bash -c "(declare -p parameters; declare -f functions) command"
ssh remote_host "(declare -p parameters; declare -f functions) command"
```
**Find file with specific word in it**  
Not that impressive but very useful when you are having bunch of new files to edit.
```bash
grep -rn "word" file
```
**Terminal shortcuts**

|Keyboard Shortcut|Description|
|:----------------|:----------|
|Ctrl+l|Clear the screen|
|Cursor|Movement|
|Ctrl+b|Move cursor one character to the left|
|Ctrl+f|Move cursor one character to the right|
|Alt+b|Move cursor one word to the left|
|Alt+f|Move cursor one word to the right|
|Ctrl+a|Move cursor to start of the line|
|Ctrl+e|Move cursor to end of the line|
|Copy & Paste|
|Ctrl+u|Cut everything from line start to cursor|
|Ctrl+k|Cut everything from the cursor to end of the line|
|Alt+d|Cut the current word after the cursor|
|Ctrl+w|Cut the current word before the cursor|
|Ctrl+y|Paste the previous cut text|
|Alt+y|Paste the second latest cut text|
|Alt+Ctrl+y|Paste the first argument of the previous command|
|Alt+./_|Paste the last argument of the previous command|
|History|
|Ctrl+p|Move to the previous line|
|Ctrl+n|Move to the next line|
|Ctrl+s|Search|
|Ctrl+r|Reverse search|
|Ctrl+j|End search|
|Ctrl+g|Abort search (restores original line)|
|Alt+r|Restores all changes made to line|
|Completion|
|Tab|Auto-complete a name|
|Alt+?|List all possible completions|
|Alt+*|Insert all possible completions|
