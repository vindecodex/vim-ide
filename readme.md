### Vim as Development Invironment

---
Install [Node.js](https://nodejs.org/en/download/)
---

### Intro
| Notation |    Meaning   |
|----------|--------------|
| `<C-o>`    | hold control and press o |
| `<C-a>x` | hold control and press a then release and press x |
| `x<C-a>` | press x and hold control and press a |
| `<C-a><C-b>` | hold control and press a then release hold control and press b |

#### Special Keys
| Notation |    Meaning   |
|----------|--------------|
| `<Esc>` | Escape key |
| `<CR>` | Enter key |
| `<Tab>` | Tab key |
| `<S>` | Shift key |
| `<Up>` | Up Arrow key |
| `<Down` | Down Arrow key |
| `<Space>` | Space Bar key |
| `<M>` | Meta key (option or alt key) |
| `<Leader>` | default is `\` key but most people define it to `,` by: `let mapleader = ','` |

### Config 001 .vimrc
`set nocompatible`
`filetype plugin indent on`

>Checking

`:filetype`

>output

`filetype detection:ON plugin:ON indent:ON`

#### Setup our VIM with Neovim
- Make sure vim version is 8 above by running command: `vim --version`
- Clean our vim by deleting existing files (~/.vim and .vimrc)
- To update  vim `brew upgrade vim`
- Lets install Neovim `brew install neovim`
- Now lets recreate the ~/.vim `mkdir ~/.vim`
- Add a file `touch ~/.vim/vimrc`
- Lets create Neovim config directory `mkdir ~/.config/nvim`
- Inside ~/.config/nvim create file `vi ~/.config/nvim/init.vim`
- Add this code below:
```bash
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
```
- The code above lets you share Vim 8 and Neovim configs so that we are not going to create multiple configs
- `export VIMCONFIG=~/.config/nvim`
- `export VIMDATA=~/.local/share/nvim`
- `mkdir -p $VIMCONFIG/pack/bundle/start` - this is where we going to clone plugins from github
- `mkdir -p $VIMDATA/undo`

#### Creating Alias
- Add this line to your aliases files

`alias vi="nvim"`

`alias vim="nvim"`

#### Useful Plugins
- FuzzyFinder (FZF)
- NerdTree
- NerdCommenter
- Themes :) find here [VimColors](https://vimcolors.com/)
