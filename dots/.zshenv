
# add extra path completions idempotentally
for addpath in \
    $HOME/bin \
    /usr/local/sbin \
#    /usr/local/anaconda3/bin \
    ; do
    if [[ -z ${path[(r)${addpath}]} ]]; then
        if [[ -d $addpath ]]; then
            path+=$addpath
        fi
    fi
done


if [[ -f ~/.github_token ]]; then
    export HOMEBREW_GITHUB_API_TOKEN=$(cat $HOME/.github_token)
fi



# this creates color for less, grep and cli
export LESSCHARSET='UTF-8'
export LESS_TERMCAP_mb=$'\e[01;32m'
export LESS_TERMCAP_md=$'\e[0;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[0;30;43m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;31m'
#export LESS_TERMCAP_us=$'\E[01;32m'
export GREP_OPTIONS='--color=auto'
export CLICOLOR=yes
export CLICOLOR_FORCE=yes
