#
############ THE ORIGINAL af-magic.zsh-theme HEADER ############
#
# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012

#
# ningxia.zsh-theme
#
# Author: Wang Yandong
# URL: http://invisiblebyte.com/
# Github: https://github.com/wangyandong-ningxia/ningxia.zsh-theme
#

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# Colors
eval color_gray='$FG[246]'
eval color_pink='$FG[204]'

# Prompt
PROMPT='$color_gray%n@%m%{$reset_color%} $FG[032]%~\
 $(git_prompt_info) \
$FG[118]%(!.#.
» )%{$reset_color%} '
RPS1="${return_code}"

# Git
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[039](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$color_pink*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
