### Vim as Development Invironment MAC version

> Updated added ubuntu

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

#### Setup our VIM with Neovim
- Make sure vim version is 8 above by running command: `vim --version`
- Clean our vim by deleting existing files (~/.vim and .vimrc)
> In ubuntu files can be found on /etc/vim/vimrc
- To update  vim `brew upgrade vim`
> In ubuntu `apt-get update` => `apt-get install vim`
- Lets install Neovim `brew install neovim`
> In ubuntu `add-apt-repository ppa:neovim-ppa/unstable` => `apt-get update` => `apt-get install neovim`
- Now lets recreate the ~/.vim `mkdir ~/.vim`
> In ubuntu `cd /etc/vim`
- Add a file `touch ~/.vim/vimrc`
> In ubuntu `touch vimrc`
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

> for ubuntu do this instead
```bash
export VIMCONFIG=~/.config/nvim
mkdir -p $VIMCONFIG/pack/bundle/start
```
> for ubuntu run nvim so that nvim automatically create nvim on .local/share and run below cammand
`mkdir -p ~/.local/share/nvim/undo`

#### Creating Alias
- Add this line to your aliases files

`alias vi="nvim"`

`alias vim="nvim"`

#### Tabnine for Auto Completion
[Just Follow This steps for installing Tabnine](/install-coc.nvim.md)

[Add this to vimrc file](/tabNine)

#### Useful Plugins
- FuzzyFinder (FZF) - in ubuntu install fzf binary instead of cloning repository to bundle/start
- NerdTree
- NerdCommenter
- Vim-DevIcons ( it will not work on alacritty )
- Themes :) find here [VimColors](https://vimcolors.com/)
