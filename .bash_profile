export GOPATH=~/work

export PATH=$PATH:$GOPATH/bin
export EDITOR=emacsclient
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/andrewspencer/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/andrewspencer/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/andrewspencer/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/andrewspencer/Downloads/google-cloud-sdk/completion.bash.inc'
fi

alias gocong='cd ~/work/src/gitlab.com/oona/veltra/congaree'
alias goserv='cd ~/work/src/gitlab.com/oona/veltra/congaree/go/cn'
alias goprot='cd ~/work/src/gitlab.com/oona/veltra/congaree/proto'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\$(parse_git_branch) \w $ "

source ~/.git-completion.sh
alias config='/usr/bin/git --git-dir=/Users/andrewspencer/.my-conf/ --work-tree=/Users/andrewspencer'
