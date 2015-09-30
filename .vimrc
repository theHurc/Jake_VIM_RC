""By Jake Baldwin
""Sept 29th 2015
""This work for Ubuntu 14.04

""REMAP CAPS LOCK AS AN ADDITIONAL ESC
""Holy hell this took way too f-ing long (~2 hours)
""I was unable to figure out how to do this from
"".profile, .bashrc, .vimrc, or by using xcape.
""All of these solutions are less than perfect
""because caps lock key, like the control and
""shift keys, are 'modifier' keys meaning that
""the press and release of the keys mean different
""things. Anyway, all of the aforementioned
""methods of solving this issue didn't work and
""ended up causing very bizarre behavior.
""Anyway....
""For Ubuntu 14.04, where the keyboard setting
""location is different than previous versions,
""you must install the gnome tweak tool with:
""
""sudo apt-get install gnome-tweak-tool
""
""Then open the tool, go the 'Typing' tab,
""and change the 'Caps lock key behavior' to
""'Make Caps Lock and additional ESC'


""insert line numbers at the left-hand side
:set number

""Remap a basic save to just ctrl-s
""in either normal or insert mode.
""Note: Add these lines to .bashrc to
""disable the ctrl-s functionality already
""associated with the terminal:
""
"" bind -r '\C-s'
"" stty -ixon
""
""The previous ctrl-s functionality was a
""a relic from the 60s so changing this
""behavior is unlikely to have an effect
""on modern-day users.
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

""Remap switching of split windows to just control
""and the the direction
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l