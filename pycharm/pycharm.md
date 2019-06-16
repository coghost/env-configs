---
title: Things need to do after install PyCharmCE
---

## PyCharm CE

### 1. Plugins

- Material Theme UI
- IdeaVim
- HighlightBracketPair
- BashSupport
- Markdown support

### 2. IdeaVim configs

- PTH: `path: ~/.ideavimrc`
- [contents](ideavimrc.md)

### 3. KeyMaps

> only my usage, edit as you wish, all just use the default.

- base: `Mac OS X 10.5+`

- personalize

  ```sh
  <C-l> : format code
  ```

### 4. Python Code Template

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
__author__ = '${USER} <${EMAIL}>'
__date__ = '${MONTH}/${DAY} ${TIME}'
__description__ = '''
'''

import os
import sys

app_root = '/'.join(os.path.abspath(__file__).split('/')[:-2])
sys.path.append(app_root)

if __name__ == '__main__':
    pass
# this is a blank line, don't forget to del this and leave this blank line at the end
```
