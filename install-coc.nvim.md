## Configuring and installing Tabnine for Auto Completion

This method of installation is for vim8's package manager Neovim only.

```
# for vim8
mkdir -p ~/.vim/pack/coc/start
cd ~/.vim/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -

# for neovim
mkdir -p ~/.local/share/nvim/site/pack/coc/start
cd ~/.local/share/nvim/site/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
```

> If having a trouble unziping the source code try doing it manualy by downloading the file, extract it and move to the created directory.

Run nvim and checkout service state if coc service is running.

`:checkhealth`

```
health#coc#check
	:heavy_check_mark: OK: Environment check passed
	:heavy_check_mark: OK: Service initialized
```

For more information about [coc.nvim](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

#### Now installing the Tabine

open nvim

`:CocInstall coc-tabine`

For more information about [coc-tabnine](https://github.com/neoclide/coc-tabnine)
