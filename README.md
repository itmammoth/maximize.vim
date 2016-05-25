# maximize.vim

maximize.vim gives you a quick shortcut for maximizing/restoring window for GUI Vim.

# Installation

## dein.vim
Add this to your .vimrc file.

    call dein#add('itmammoth/maximize.vim')

Then, `:call dein#install()`

## Vundle

    Plugin 'itmammoth/maximize.vim'

... and many other package managers.

# Usage

Press `<F10>`, and your window will be maxmized.  
To restore window, press `<F10>` again.

##### NOTICE:
maxmize.vim won't be activated in CUI vim.

# Configuration
If you want to map it on other keys, Add the following to your `.vimrc` file.

    let g:maximize_default_mapping = 0
    nnoremap YOUR_PREFERRED_KEY :MaximizeWindow<CR>

# Contribution

Fork it. `blankslate.g?vimrc` are essential vim script files for testing.

    $ gvim -u blankslate.vimrc -U blankslate.gvimrc

# License

MIT License.
