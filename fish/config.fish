# set path
set LOCAL ~/Local
set PATH $LOCAL/homebrew/bin $PATH
set PATH $LOCAL/texbin $PATH
set PATH $LOCAL/bin $PATH
set PATH ~/anaconda/bin $PATH

set -x EDITOR $LOCAL/homebrew/bin/nvim

# change the colors, make suggestions a lighter color
set fish_color_autosuggestion grey
set fish_color_command normal
set fish_color_comment grey
set fish_color_cwd green
set fish_color_cwd_root green
set fish_color_user green
set fish_color_host normal
set fish_color_end normal
set fish_color_escape normal
set fish_color_match normal
set fish_color_normal normal
set fish_color_operator normal
set fish_color_param normal
set fish_color_quote normal --bold
set fish_color_redirection blue
set fish_color_valid_path normal
# SET fish_color_error:brred
# SET fish_color_search_match:bryellow\x1e\x2d\x2dbackground\x3dbrblack
# SET fish_color_history_current:\x2d\x2dbold
# SET fish_color_selection:white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
# SET fish_color_status:red
# SET fish_pager_color_prefix:white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set fish_pager_color_prefix grey
# SET fish_pager_color_completion:\x1d
set fish_pager_color_completion normal
# SET fish_pager_color_description:B3A06D\x1eyellow
# SET fish_pager_color_progress:brwhite\x1e\x2d\x2dbackground\x3dcyan
rvm default

# add Anaconda functions
source ~/anaconda/etc/fish/conf.d/conda.fish
