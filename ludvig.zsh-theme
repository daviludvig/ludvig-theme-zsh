
# purple username
username() {
   echo "%{$FG[046]%}%n%{$reset_color%}"
}

# current directory, two levels deep
directory() {
   echo "%{$FG[004]%}%2~%{$reset_color%}"
}

#aaaaa


# current time with milliseconds
current_time() {
   echo "%T"
}

# returns 👾 if there are errors, nothing otherwise
return_status() {
   echo "%(?..👾)"
}


# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# putting it all together
PROMPT='%B$(username) $(directory) $(git_prompt_info)%b $ '
RPROMPT='$(current_time)$(return_status)'