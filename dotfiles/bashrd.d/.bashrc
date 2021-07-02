alias config='/usr/bin/git --git-dir=/Users/liferay/.cfg/ --work-tree=/Users/liferay'


# set -x
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export JAVA_HOME="$(/usr/libexec/java_home)"
export M2_HOME="/Users/liferay/Desktop/apache-maven-3.6.3/bin"
export PATH=$JAVA_HOME:$M2_HOME:$PATH

# export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
# launchctl setenv PATH $PATH

alias ls='ls -GFh'
alias py='python3'
alias exif='exiftool -all='

alias gs='git status -uno'
alias gsm='git status -uno | grep modified'

alias gc='git commit -m'
alias gcne='git commit --amend --no-edit'
alias gcme='git commit --amend --date=now --author "Spencer Woo <spencer.woo@liferay.com>"'

alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grb='git rebase -i'

alias clear='clear && printf '\e[3J''
alias reset='clear && printf '\e[3J''

xcod(){
  sudo rm -r -f /Library/Developer/CommandLineTools
  xcode-select --install
}

# LC_REPO_PATH=/Users/liferay/Desktop/cloud/CCG-alias
export ST_GCP_USER=2

# lgcp() {
#   "${LC_REPO_PATH}"/lgcp/lgcp "$@"
# }

ST_REPO_PATH=/Users/liferay/Desktop/cloud/support-tools
# export LC_DRY_RUN=1

lgcp() {
  "${ST_REPO_PATH}"/alias/lgcp/lgcp "$@"
}

lgcloud() {
  "${ST_REPO_PATH}"/alias/lgcloud/lgcloud "$@"
}

bfg() {
  java -jar /Users/liferay/Desktop/bfg-1.14.0.jar "$@"
}

CCG_REPO_PATH=/Users/liferay/Desktop/me/CCG-tools

export LIFERAY_CLOUD_USERNAME=spencer.woo@liferay.cloud
export LIFERAY_CLOUD_PASSWORD=trul.PEPT*aird1zirt81
# export LIFERAY_CLOUD_PASSWORD=8b17d584a5be53e9a25ce0d733a93c12SS@@

# lgcloud() {
#   "${CCG_REPO_PATH}"/alias/lgcloud/lgcloud "$@"
# }

watch(){
  while :; 
  do 
  clear
  date
  sleep ${2:-1}
  done
}

# lgcp() {
#   "${CCG_REPO_PATH}"/alias/lgcp/lgcp "$@"
# }

PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# LC_REPO_PATH=/path/to/clone/location

# git rebase upstream/develop
# git rebase -i --onto master/develop
# nc -lvp 4444
# nc ip port -e /bin/bash
alias greset='git commit --amend --reset-author --no-edit'
# tar -xcf

alias gitclean='git clean -xfd -e "*.iml" -e "*liferay*" -e "*.idea/"'
alias hhh='git clean -xfd -e "*.iml" -e "*liferay*" -e "*.idea/"; ant setup-libs; ant compile; ant install-portal-snaphots;'

alias grne='git revert --no-edit'
alias gd='git ls-files --deleted | xargs git add'
alias gd2='git ls-files --deleted -z | git update-index --assume-unchanged -z --stdin'

alias stash='git stash -u'
alias apply='git stash apply'
alias drop='git stash clear'

alias du='du -sh'
alias df='df -h'

alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"

alias ports='nmap -T4 -A -p- 134.209.63.117'

testing22(){
  # local GITHUB_REPOSITORY='github'
  IFS=/ read -a REPO_PARTS<<<"dxpcloud/lfrgs-liferay-jarvis"
  export LCP_CI_SCM_REPOSITORY_OWNER=${REPO_PARTS[0]}
  export LCP_CI_SCM_REPOSITORY_NAME=${REPO_PARTS[1]}

  echo ${REPO_PARTS[0]}
  echo ${REPO_PARTS[1]}
}

alias ga='git add'
alias gl='git log -1'
alias gl2='git show --name-only --oneline HEAD'
alias ooo='| tee output.txt'

alias hak='~/go/bin/hakrawler'

# alias tr='tesseract'

function redisrr(){
  echo 'echo io.adapter(socketIoRedis(shared.config.redis))'
}

lcplog(){
  lcp log -r lcp -p liferaywww-dev -s backup --since "04/03/2020 00:00:00" --until "04/04/2020 00:00:00"
}

ignore(){
  open 'https://raw.githubusercontent.com/spencermwoo/lordsmobile/master/.gitignore'
}

# alias go='go'


# _get_commit(){
#   llg=$(git log -1)

#   echo $llg | head -1 | cut -d' ' -f2
#   # git log -1 | head -1 | cut -d' ' -f2
# }

test(){
  if [ -f "show-files2.sh" ]; then
    show-files2.sh
  fi
}

# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# # git branch 2>/dev/null | /usr/bin/grep '^*' | colrm 1 2)"
# }

# function lol(){
#   PS1_gitbranch="\e[38;5;204m\]\$(parse_git_branch)"

#   echo $PS1_gitbranch
#   # \e[38;5;204m\]\$(parse_git_branch)
#   # $(_get_git_branch)
# }

# _get_git_log(){
#   git log -1 | head -1 | rev | cut -d' ' -f2 | rev
# }

# _get_git_repo(){
#   git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d'.' -f1-2 | sed -e's/:/\//' -e 's/git@/https:\/\//'
# }

# $1 remote
_get_git_repo(){
  git remote -v | grep git@github.com | grep fetch | grep $1 | cut -f2 | cut -d'.' -f1-2 | sed -e's/:/\//' -e 's/git@/https:\/\//'
}

_get_git_branch(){
  git branch -v | grep '*' | cut -d' ' -f2
}

gh(){
  REMOTE=$(git branch -v | grep '*' | cut -d' ' -f2)

  if [[ $REMOTE =~ "HEAD" ]]; then
    HEAD=$(git branch -v | grep '*' | cut -d' ' -f5 | sed 's/.$//')

    if [[ $HEAD =~ "/" ]]; then
      BRANCH=$(echo $HEAD | cut -d'/' -f1)
      REPO=$(echo $HEAD | cut -d'/' -f2)

      open $(_get_git_repo $BRANCH)/tree/$REPO
    else
      open $(_get_git_repo origin)/tree/$HEAD
    fi
  else
    open $(_get_git_repo origin)/tree/$(_get_git_branch)
  fi
}

function cpsetups(){
  mv ~/.bash_profile .
}

tb(){
  python3 ~/Desktop/me/ticket-bisect/ticket-bisect.py $@
}
# function gh(){
#   open 'https://github.com/liferaycloud/'
# }

_git_fetch_all(){
  # ls -d */ | while read upstream; do git branch fetch "${upstream#origin/}" "$upstream"; done
  find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull --all \;
  # git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
  # git fetch --all
  # git pull --all
}

gpa(){
  find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull upstream develop \;
}

gfa(){
  $(_git_fetch_all)
}

# gfa2(){

# }

# ==== CLOUD ====

# alias lcp='lcp-exp'

env(){
  cp /Users/liferay/Desktop/cloud/liferay-cloud/.env .
}

alias imgdxp='export WEDEPLOY_INFRASTRUCTURE_PROVIDER=local && export WEDEPLOY_ENVIRONMENT=lfr-cloud-dev-us-east-1 && ./run-infra.sh'
alias cleanimgdxp='./clean-up-infra.sh && export WEDEPLOY_ENVIRONMENT=lfr-cloud-dev-us-east-1 && ./run-infra.sh'
  
# alias testapi='telepresence --swap-deployment api --logfile /dev/null --run npm run test:integration'
              # telepresence --swap-deployment api --namespace localdev --logfile /dev/null --local-cluster --run npm run test:integration
alias createapi='telepresence --swap-deployment api --namespace localdev --logfile /dev/null --local-cluster --run npm run dev'
alias createcon='telepresence --swap-deployment console --logfile /dev/null --run npm run dev'
alias testapi='telepresence --swap-deployment api --logfile /dev/null --local-cluster --run npm run test:integration'
alias testspecificapi='telepresence --swap-deployment api --logfile /dev/null --local-cluster --run npx mocha --require ts-node/register --exit  --timeout 30000 test/env/node-integration.js test/integration/manager/KubernetesManager.ts'
alias createadmin='telepresence --swap-deployment admin-client --local-cluster --logfile /dev/null --run yarn dev'

gport(){
  lsof -i :$@
  # netstat -an | grep $@
}

kpid(){
  kill -9 $@
}

# alias createapi='telepresence --swap-deployment api --expose 3002 --logfile /dev/null --run npm run dev'
# alias createcon='telepresence --swap-deployment console --expose 3005 --logfile /dev/null --run npm run dev'

alias start='/Users/liferay/Desktop/cloud/development/start.sh'
# alias stop='lcp login && /Users/liferay/Desktop/cloud/development/stop.sh'
#idk how to delete services so .... do that
function stop2(){
  lcp login --no-browser && lcp list
}

function dc_trace_cmd() {
  local parent=`docker inspect -f '{{ .Parent }}' $1` 2>/dev/null
  declare -i level=$2
  echo ${level}: `docker inspect -f '{{ .ContainerConfig.Cmd }}' $1 2>/dev/null`
  level=level+1
  if [ "${parent}" != "" ]; then
    echo ${level}: $parent 
    dc_trace_cmd $parent $level
  fi
}


function gnn(){
  echo   "# Compiled source #
          ###################
          *.com
          *.class
          *.dll
          *.exe
          *.o
          *.so

          # Packages #
          ############
          # it's better to unpack these files and commit the raw source
          # git has its own built in compression methods
          *.7z
          *.dmg
          *.gz
          *.iso
          *.jar
          *.rar
          *.tar
          *.zip

          # Logs and databases #
          ######################
          *.log
          *.sql
          *.sqlite

          # OS generated files #
          ######################
          .DS_Store
          .DS_Store?
          ._*
          .Spotlight-V100
          .Trashes
          ehthumbs.db
          Thumbs.db"
}

alias ddoo='ssh root@157.245.190.93'
alias ddoo2='ssh root@206.189.70.231'

alias cert2='-----BEGIN CERTIFICATE-----
MIIE8DCCAtigAwIBAgIIUCieQL2VehMwDQYJKoZIhvcNAQEMBQAwFjEUMBIGA1UE
AxMLVlBOIHJvb3QgQ0EwHhcNMTkxMjIzMjI1MzEwWhcNMjkxMjIwMjI1MzEwWjAW
MRQwEgYDVQQDEwtWUE4gcm9vdCBDQTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
AgoCggIBAJtdcV4qWj89MyWv3D8df31LZOHagzrcj9yvEjyRiuDgVlWZ09ua2eYC
vki+QDnshWX5F9Vh9KBRZvk9p3+4PmtnDJzlq1pqJ//qjOTlMqFGLIg/1LnIflzm
ddCuVld+gFL5N1sx7tmezLCCo69tQhNGB15PYh3O7+ZNewZ8WcVaIchto/Ryza/p
ZEFywJmGGYhwj+sdKeDAosmiYqVqsqmvB20VGjHprpNnCCA5TmdzJavWTnqljH1R
YjVxnXWA8F786+YOYEGGS9WT5qlQAuWxrw1OrSkKoS+9oFmcLWEN3eOeQrWD2JM+
nHKwXep71YDfHV1hdpxR+cexO2SDTR75ZyfWToe0QgOikBcYU3qDt+tjNGIcvFDU
Wb2eo6VKOHlKLA7PhWB++dpqeX7VG+3pHtKRJRagIRBU16pWPQfXBU5MpJQncRMK
Gz5H7v5HJJfoeejOwSn9eluP34+c3dMRsvJRY1uZ07puRyWvsH86l/2shUbiCdb5
LsZ9WV7xx9RLcZBfrlGcSU44aHz1fuT0Ys9pljWmO2PPEErFi5W/kCwy9IMjLwTP
qiVb3FWSvjOPbrQXH0BIR4Qr1BFpUVEP+9Ejb2IXXcsVdzoOWvFRU/2aA71b4wyU
2wtudMjA0GubbsCWt+IX/HZeMutX4nGtMkTCXJ6pAinBdIoAAi/pAgMBAAGjQjBA
MA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRqRhF/
fNWkZJGtDGuq+sMQ0EExzzANBgkqhkiG9w0BAQwFAAOCAgEATdUVuSZBqwYual2Z
onT09fnAPf5gL9H2rs1dcjEoxlAKMHQiTnG/intD35WPR5n+tawboSiIH5F2Ls7U
HcO3RmMmXdssviHq4vsisSwgIDvVRdGop4f7zW34z6vggk9pQAL0ADOpoZg364p2
8k/Dh3/uaOsn7fW+8fXPbRjD1eKlVb+qbrXAFWwFywVCnXCB4VUfcau+ww2UlZxz
OHdEISKW/RAayQZoe8GeRgRaTjPmcL95Qg2xLKExhvBOHrgY63po5jos+jYg29d3
QAHVARF2JBvsAGcwYwJELlPY99FbOxPvaItcuQpOGbVrpmXBNOQT4tbavwUiU39S
TquOxnxP+t5PSnPeIPSh4Dk+rS+xwxJRmHpSJHxOMDuBX3uLILr3n9hvLMXDsJnn
zD8+m/SFjczNUmwR1QyP0EDhyv2J3mdhKAqvHjTKDebVl7FsdjJv2JHGkBtndw4o
24uHlywOidASExqVt4GBabjl6HQEe/QxpXxyEu5jl0ZzrmGt+ZgcBuj8mvpeiy+u
/xl+Nz96xNXuLK26Izw6ShO+itaR1Ltx/oBjK0wv9abse0dEFbHbEZ2hmnlB5RB2
Bw/5fLPqUssGhfmwizm/1rCGep1GV5cUGRVoeeCOwXjEKxE8bgdqGbLgMAhvpr5s
KiJ9gxY+v3u4KcI3lVE/pmfIZx4=
-----END CERTIFICATE-----'

alias vpncert='-----BEGIN CERTIFICATE-----
MIIE8DCCAtigAwIBAgIIHh07iXL/2VowDQYJKoZIhvcNAQEMBQAwFjEUMBIGA1UE
AxMLVlBOIHJvb3QgQ0EwHhcNMTkwMzI3MTk0NjU3WhcNMjkwMzI0MTk0NjU3WjAW
MRQwEgYDVQQDEwtWUE4gcm9vdCBDQTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
AgoCggIBALrVT/y7HeLe34ja2iu1FwJmPYziEVgzt5rOz0tUIUAOBv9qt7V1y2vm
+DTdrmr45QDKCkhffeF355CRkpEY/F31+G1qCllUa0c61i8ljw85TTQp/1QkD+w3
Sp/w8JNKu6qe2jE1Evoe+FTORjta2c600YJiVvymRC4wlyTVLTRY0JvxLnV91kTa
Tb1TXVs24x83Zb+JLXQNB91wZBevFNOXDbZ0I5ZReNZ0Iwi5m+aYf67DiY4VMrEq
ILVBLsOdHkEGFs2CYwOhf30C7LqlJDwMZG9lJOs6LeRAkFdXA4vh2VxaFcCOFiTf
VcwL9Jzuafr1CesX6Eyb2QfS7dtV9o9Q//WBdymLlTuXKHNf9H7zbwfzn0JCFYSI
GhtalOADsYztdzCcO7jMB9L7VjfYe8WfgpA1czn5oJF6RUhvATIRq6BI7A2zW32J
9IefmRD4ZUeXz7ut7To1KRuhzxhecaX4DDf2HUQmJJ7pEbCVOsTrQo7dwKvebQqv
HqmtisbiBKp+Ms2YInNYzxEiVBj5aXm2wNkhOkhYnRkfd+z9kolp75XOGrUrIBya
Mpl8BHcj5NH/pk/RjSn/F8Vwt1GVw/1z37rKK4Pyz5Z7RfrwSM+obGxf1BRwDyCB
AGUhAO7SOyeVRbfDu6bXwhYdMGnnl5ZrO8TCrhkOSbK1Wdj0RE6pAgMBAAGjQjBA
MA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBT9+E0a
VwRbVhtp1wOwTX2MpksMEDANBgkqhkiG9w0BAQwFAAOCAgEAgGYSAA0NSkQu3BHn
pJmy080jAlddONT2LsejCGrMwjaSZoyhjj8LLmxiChjGm56+Nc6S3iXnkRTGiX3m
H286f740h/akXYZaocBaunOUvJTUDSzYC8tl7gk9QXvHo3UdOkLXCJnFCp3MYXdT
abFy7F4uef7l7dKCfoLf/SvbQHsuZARyXtXOHwkL9I5h0Pu/OJYi7MkmlABuybdq
M6P7uMhONH4rnyUoCa3rMZfh2n0mKmavvQVVt3l4PyhNO2cfa0OUTm/uuNElN88B
9ALHWfXM0y33c+33EB/bzhsJwc5gcvQePtuE+Qp/UO5eE/rU0d8Gzyum6IpbuKeo
wfKhG7GkCt4HmkGfxABuAnN63SJnUSJn6HUjyClhME2Ve40goX53cAw2luYvCHMd
0DgD/b+Ng68TxPcZjY+4h8N5XqID4JPqjRsyAqpRWoIbzs5K0+H72D82+DU2X9ZA
ztBz13XuIKR1+nzYR1JxZVi458hOUlL/EXH27WiFrw+Kzacj3rHzxEc6zrDuicIn
SjcYzr90BuE8Gkmd+6ivGTQ8t6t9eOS0T9yWtDjxtP7I0PPISR7kpB3ZJmhf+J1c
02A80+6sNOUuC2ypjghxA5t+g05dlJIiGdCJqHwlt1PovqQKAFfWsVwddQFd/8Gw
PAt6KBioBn+N25v2B3N3t4QCmi0=
-----END CERTIFICATE-----'

alias kk='kubectl'
alias kgp='kubectl get pods'

export KOPS_STATE_STORE=s3://kops-state-1908y91h 

alias ms='minikube start --memory 8G --cpus=4'
alias k='kubectl'
alias kns='kubens'
alias kcx='kubectx'
alias d='docker'
alias dc='docker-compose'
alias dr='docker rmi $(docker images -q --filter "dangling=true")'
alias killdocker='docker kill $(docker ps -q)'
alias rmdocker='docker rm $(docker ps -a -q)'
alias deldocker='docker rmi $(docker images -q)'

alias hlint='hadolint Dockerfile'
# alias stop2='lcp login && Y && lcp list'

command_exists () {
    type "$1" &> /dev/null ;
}



cloud_path="/Users/liferay/Desktop/cloud/"
_ccc(){
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  # keep the suggestions in a local variable
  local suggestions=($(compgen -W "$(ls -F ${cloud_path} | grep \/$ )" -- "${COMP_WORDS[1]}"))

  if [ "${#suggestions[@]}" == "1" ]; then
    # if there's only one match, we remove the command literal
    # to proceed with the automatic completion of the number
    local number=$(echo ${suggestions[0]/%\ */})
    COMPREPLY=("$number")
  else
    # more than one suggestions resolved,
    # respond with the suggestions intact
    COMPREPLY=("${suggestions[@]}")
  fi
}

ccc(){
  cd "${cloud_path}$@"
}

complete -F _ccc ccc

# figure out how to make this agnostic -- pass in path

_mee(){
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  # keep the suggestions in a local variable
  local suggestions=($(compgen -W "$(ls -F /Users/liferay/Desktop/me/ | grep \/$ )" -- "${COMP_WORDS[1]}"))

  if [ "${#suggestions[@]}" == "1" ]; then
    # if there's only one match, we remove the command literal
    # to proceed with the automatic completion of the number
    local number=$(echo ${suggestions[0]/%\ */})
    COMPREPLY=("$number")
  else
    # more than one suggestions resolved,
    # respond with the suggestions intact
    COMPREPLY=("${suggestions[@]}")
  fi
}

mee(){
  cd /Users/liferay/Desktop/me/"$@"
}
# Apply auto-complete functionality for cds
complete -F _mee mee

# _mee '$(pwd)'

mme(){
  mee $@
}

# ==== CLOUD ====
  
#upstream, local, etc
#git push <> branch


#get current branch
gb(){
 git branch | grep \* | cut -d ' ' -f2
}

#gp upstream
#gp upstream gb
gp(){
  if [ -z "$2"]; then
    git push "$1" $(gb) -f
    # git push "$1" "$($1)"
    # git push "$1" "$@"
  elif [ -z "$1"]; then
    git push "$1"
  else
    git push
  fi
}

# gp(){
#   if [ -z "$2"]; then
#     git push "$@"
# }

#git push origin branch
gpo(){
  git push origin $(gb) -f
}

#gpo
#gpo gb
# gpo(){
#   if [ -z "$1" ]; then
#     git push origin
#   else 
#     # local branch="$(eval $1)"
#     git push origin "$($1)"
#   fi
# }

# safer but fix later
# gpo(){
#   git push origin "$@"
# }

# x() {
#   curl "$($1)"
# }

# y() {
#   echo "google.com"
# }

out(){
  "|& tee out.txt"
}

z1(){
  local s="$1" "$2"
  eval "${s}"
}

x(){
  curl "$1"
}

y(){
  echo "google.com"
}

z() {
  # local args=""
  # for var in "${@:2}"
  # do
  #   echo $("$var")
  #   args="${args} $("$var")"
  # done
  # args="${args}" | xargs
  # # echo "${args}"
  # "$1" "${args}"

  if [ -z "$1" ]; then
    echo "This exists to concatenate.  Pass more arguments."
  elif [ -z "$2" ]; then 
    echo "This exists to concatenate.  Pass more arguments."
  elif [ -z "$3" ]; then
    "$1" $("$2")
  elif [ -z "$4" ]; then
    "$1" $("$2") $("$3")
  fi
}

#alias go='git checkout'
alias gf='git fetch'
alias gfu='git fetch upstream'

alias gr='git remote -v'
alias grh='git reset --hard'

alias bn='git branch | grep \* | cut -d " " -f2'
alias minn="git ls-files modules | grep -F app.bnd | xargs grep -Fl 'Liferay-Releng-Bundle: false' | xargs dirname | xargs git ls-files | grep -F .lfrbuild-portal | xargs -r rm"

alias nc='ncat'

# function dl(){
#   'youtube-dl'
# }
alias dl='youtube-dl'
alias dl2='youtube-dl --extract-audio --audio-format mp3'
alias dl3='youtube-dl -F '
alias dl4='youtube-dl -f '

alias mp4mov='ffmpeg -i input_file.mp4 -acodec copy -vcodec copy -f mov output_file.mov'

# export -f dl

alias aa='hsh; ant all'
alias ad='ant deploy'
alias afs='ant format-source'
alias afslc='ant format-source-local-changes'

alias 33='../../..'
alias 44='../../../..'
alias 55='../../../../..'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'

alias app='vim app.server.liferay.properties'
# alias run='./catalina.sh jpda run'
alias run2='./catalina.sh run'

# grab app.server.liferay.properties
# write file in location just gl
alias print=${D:\test}./test.sh 

IJ_CLONE_PATH=C:/Users/liferay/Desktop/liferay-intellij
MCD_RD_CLONE_PATH=C:/Users/liferay/Desktop/liferay-faster-deploy
SW_PATH=C:/Users/liferay/Desktop/alias
TB_PATH=C:/Users/liferay/Desktop/me/true-blame
LDT_REPO_PATH=C:/Users/liferay/Desktop/Repos/liferay-dev-tools

#source_bash
sb(){
  source ~/.bash_profile
}

n8(){
  eval "nvm use 8.15.1"
}
n10(){
  eval "nvm use 10.15.1"
}
nl(){
  eval "nvm list"
}

pyserver(){
  echo "py -m http.server --bind 127.0.0.1"
  eval "py -m http.server --bind 127.0.0.1"
}

phpserver(){
  echo "php -S localhost:9000"
  eval "php -S localhost:9000"
}

#fetch pr
pr(){
  git fetch origin pull/$1/head:pr-$1
}

pr2(){
  git fetch $1 pull/$2/head:pr-$2
}

#server

# alias run='./catalina.sh jpda run'
run(){
if [ -z "$1" ]; then
    echo "USAGE: run <tomcat-directory>"
  else
    echo "RUNNING: './$1/bin/catalina.sh jpda run'"
    eval './$1/bin/catalina.sh jpda run'
  fi
}
#should I do setenv.sh? JPDA_ADDRESS=8000
eight(){
  if [ -z "$1" ]; then
    echo "USAGE: eight <tomcat-directory>"
  else
    echo "RUNNING: 'cp C:\\Users\\liferay\\8080catalina.sh ./$@/bin/catalina.sh'"
    eval "cp C:\\\Users\\\liferay\\\8080catalina.sh ./$@/bin/catalina.sh"
    eval "cp C:\\\Users\\\liferay\\\8080server.xml ./$@/conf/server.xml"
  fi
}

port(){
  if [ -z "$1" ]; then
    echo "USAGE: <base> <tomcat-directory>"
  else
    echo "RUNNING: 'cp C:\\Users\\liferay\\9080catalina.sh ./$@/bin/catalina.sh'"
    eval "cp C:\\\Users\\\liferay\\\9080catalina.sh ./$@/bin/catalina.sh"
    eval "cp C:\\\Users\\\liferay\\\9080server.xml ./$@/conf/server.xml"
  fi
}

nine(){
  if [ -z "$1" ]; then
    echo "USAGE: nine <tomcat-directory>"
  else
    echo "RUNNING: 'cp C:\\Users\\liferay\\9080catalina.sh ./$@/bin/catalina.sh'"
    eval "cp C:\\\Users\\\liferay\\\9080catalina.sh ./$@/bin/catalina.sh"
    eval "cp C:\\\Users\\\liferay\\\9080server.xml ./$@/conf/server.xml"
  fi
}


#bashrc
rc(){
  open -a "Sublime Text" "/Users/liferay/.bash_profile"
}

vrc(){
  open -a "Sublime Text" "/Users/liferay/.vimrc"
}

#notes
tt(){
  "C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Users\liferay\Desktop\tt"
}

cc(){
  "C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Users\liferay\Desktop\cc"
}

dir(){
  open -F -a "Finder" "$@"
}

#make agnostic soon
# ccc(){
  # logic for api
#   cd /Users/liferay/Desktop/cloud/"$@"
# }
# mee(){
#   cd /Users/liferay/Desktop/me/"$@"
# }

api(){
  cd /Users/liferay/Desktop/cloud/api/api
}
archived(){
  cd /Users/liferay/Desktop/cloud/archived-images
}
cli(){
  cd /Users/liferay/Desktop/cloud/cli
}
cloud(){
  cd /Users/liferay/Desktop/cloud
}
console(){
  cd /Users/liferay/Desktop/cloud/console
}
downloads(){
  cd /Users/liferay/Downloads
}
development(){
  cd /Users/liferay/Desktop/cloud/development
}
docs(){
  cd /Users/liferay/Desktop/cloud/liferay-docs-dxp-cloud
}
liferay-cloud(){
  cd /Users/liferay/Desktop/cloud/liferay-cloud
}
backup(){
  cd /Users/liferay/Desktop/cloud/service-backup
}
backups(){
  backup
}
provision(){
  provisioning
}
provisioning(){
  cd /Users/liferay/Desktop/cloud/service-provisioning
}
jenkins(){
  cd /Users/liferay/Desktop/cloud/service-jenkins
}
liferaycloudsamples(){
  cd /Users/liferay/Desktop/cloud/liferaycloudsamples
}
lfrspencerwoo(){
  cd /Users/liferay/Desktop/cloud/lfrspencerwoo
}
development(){
  cd /Users/liferay/Desktop/cloud/development
}
infra(){
  cd /Users/liferay/Desktop/cloud/infrastructure
}
javascript(){
  cd /Users/liferay/Desktop/cloud/javascript
}
setups(){
  cd /Users/liferay/Desktop/me/setups
}

# run_local(){
#   ./start.sh

#   createapi
#   createcon
# }

ccloud(){
  cd /Users/liferay/Desktop/cloud/
}

cme(){
  cd /Users/liferay/Desktop/me/
}

rr(){
  "C:\Windows\explorer.exe" "C:\Users\liferay\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\root"
}

dbCreate() {
  if [ $# -eq 0 ]; then
    echo "Please enter a database name."
  else
    # mysql -u$db_user -p$db_pw -e "create database $1 CHARACTER SET utf8;"
    mysql -e "create database $1 CHARACTER SET utf8;"
  fi
}

dbDrop() {
  if [ $# -eq 0 ]; then
    echo "Please enter a database name."
  else
    mysql -u$db_user -p$db_pw -e "drop database $1;"
  fi
}

dbRecreate(){
  if [ $# -eq 0 ]; then
    echo "Please enter a database name."
  else
    dbDrop $1; dbCreate $1;
  fi
}

cdd(){
  eval "cd C:\Users\liferay\Desktop\Deploy"
}

cdr(){
  eval "cd C:\Users\liferay\Desktop\Repos"
}

# dc(){
#   if [ -z "$1" ]; then
#     echo "USAGE: dc tomcat-9.0.10"
#   else
#     echo "RUNNING: 'rm -rf work; rm -rf osgi/state; rm -rf data; rm -rf $1/temp; rm -rf $1/work'"
#     rm -rf work; rm -rf osgi/state; rm -rf data; rm -rf $1/temp; rm -rf $1/work
#   fi
# }

chash(){
  if [ -z "$1" ]; then
    echo "USAGE: chash tomcat-9.0.10"
  else
    echo "RUNNING: 'cat $1/bin/setenv.sh'"
    cat $1/bin/setenv.sh
  fi
}

subhash(){
  if [ -z "$1" ]; then
    echo "USAGE: subhash tomcat-9.0.10"
  else
    echo "RUNNING: 'sub $1/bin/setenv.sh'"
    "C:\Program Files\Sublime Text 3\sublime_text.exe" $1/bin/setenv.sh
  fi
}

# dc(){
#   if [ -z "$1" ]; then
#     echo "USAGE: dc tomcat-9.0.10"
#   else
#     if ["${1:-1}" == "/" ]; then
#       echo "RUNNING: 'rm -rf work; rm -rf osgi/state; rm -rf $@ temp; rm -rf $@ work'"
#       eval "rm -rf work; rm -rf osgi/state; rm -rf $@temp; rm -rf $@work"
#     else
#       echo "RUNNING: 'rm -rf work; rm -rf osgi/state; rm -rf $@/temp; rm -rf $@/work'"
#       eval "rm -rf work; rm -rf osgi/state; rm -rf $@/temp; rm -rf $@/work"
#     fi
    
#   fi
# }

# dcf(){
#   dc $@; dbRecreate;
# }

sub() {
  open -F -a "Sublime Text" "$@"
}

ghidra(){
  "C:\Users\liferay\Desktop\SEC\ghidra_9.0\ghidraRun.bat"
}


lb(){
  "C:\Users\liferay\AppData\Local\Programs\Python\Python36-32\python.exe" "C:\Users\liferay\Desktop\Repos\liferay-bisect\liferay-bisect.py" "$@"
  # "C:\Users\liferay\AppData\Local\Programs\Python\Python36-32\python.exe" "C:\Users\liferay\Desktop\Repos\liferay-dev-projects\liferay_bisect\liferay-bisect.py " "$@"
}

lb2(){
  "C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Users\liferay\Desktop\Repos\liferay-dev-projects\liferay_bisect\liferay-bisect.py"
}

cr() {
        DRIVERS_FOLDER=/path/to/folder/with/jdbc/jars \
                ${MCD_RD_CLONE_PATH}/tomcat/catalinastart $@
}

#hosts file

hosts() {
  sudo vim /etc/hosts
}

# host(){
#   powershell -c start -verb runas notepad.exe 'C:\Windows\System32\drivers\etc\hosts'
# }

#MCD
#https://github.com/holatuwol/liferay-faster-deploy
fixdeps() {
        ${MCD_RD_CLONE_PATH}/packageinfo/fixdeps
}

# Taken from https://gist.github.com/ericyanLr/7b8d223aca096e45bfd75785c6fed9e1

# Helper Functions
_is_cwd_git() {
  if ( git rev-parse --git-dir > /dev/null 2>&1 ); then
    return 0
  fi

  return 1
}

_is_cwd_git_liferay_app() {
  if _is_cwd_git; then
    local gitFolderPath="$(git rev-parse --show-toplevel)"
    local app_bnd_file_path="${gitFolderPath}/app.bnd"

    if [ -f "${app_bnd_file_path}" ] && \
        [ $(cat "${app_bnd_file_path}" | grep '^Liferay-Releng' | wc -l | xargs) -gt 0 ]; then
      return 0
    fi
  fi

  return 1
}

_is_cwd_git_liferayDXP() {
  if _is_cwd_git; then
    local gitFolderPath="$(git rev-parse --show-toplevel)"

    if [ -d $gitFolderPath/portal-kernel ] && [ -d $gitFolderPath/modules ]; then
      return 0
    fi
  fi

  return 1
}

# cds - easily navigate to a Liferay module within a Liferay repo
cds() {
  local partial_module_name="$1"

  if [ -n "${partial_module_name}" ]; then
    local folder_path

    # Search - tailored for Liferay repo
    if _is_cwd_git_liferayDXP || _is_cwd_git_liferay_app; then
      pushd $(git rev-parse --show-toplevel) > /dev/null

      local filtered_file_paths=$(git ls-files | grep "${partial_module_name}")

      # Search strictly - match search term exactly in module name
      folder_path="$(echo "${filtered_file_paths}" \
        | awk -v moduleRegex="(/|^)${partial_module_name}/((app|bnd).bnd|build(.gradle|.xml))" \
          '$0 ~ moduleRegex && (moduleLength == "" || length < moduleLength) {moduleLength = length; module = $0} END{print module}' \
        | xargs dirname 2>/dev/null)"

      # Search not as strictly - contains search term in module name
      if [ -z "${folder_path}" ]; then
        folder_path="$(echo "${filtered_file_paths}" \
          | awk -v moduleRegex="(/|^).*${partial_module_name}.*/((app|bnd).bnd|build(.gradle|.xml))" \
            '$0 ~ moduleRegex && (moduleLength == "" || length < moduleLength) {moduleLength = length; module = $0} END{print module}' \
          | xargs dirname 2>/dev/null)"
      fi

      if [ -n "${folder_path}" ]; then
        folder_path="$(git rev-parse --show-toplevel)/${folder_path}"
      fi

      popd > /dev/null
    fi

    if [ -z "${folder_path}" ]; then
      # Search - general git repo
      if _is_cwd_git; then
        pushd $(git rev-parse --show-toplevel) > /dev/null

        folder_path="$(git ls-files | grep -m 1 "${partial_module_name}/" | xargs -n1 dirname 2>/dev/null)"

        if [ -n "${folder_path}" ]; then
          folder_path="$(git rev-parse --show-toplevel)/${folder_path}"
        fi

        popd > /dev/null
      fi

      # Search - general search using find
      if [ -z "${folder_path}" ]; then
        folder_path="$(find . -type d -name "*${partial_module_name}*" -print0 -quit)"
      fi
    fi

    if [ -n "${folder_path}" ]; then
      builtin cd -- ${folder_path}
      pwd
    fi
  else
    echo "Usage: ${FUNCNAME[0]} module-name" >&2
  fi
}

# Auto-complete functionality for cds
# Reference: @spencerwoo
# Reference: https://iridakos.com/tutorials/2018/03/01/bash-programmable-completion-tutorial.html
_cds() {
  if [ "${#COMP_WORDS[@]}" != "2" ] || (! _is_cwd_git); then
    return
  fi

  local gitFolderPath="$(git rev-parse --show-toplevel)"

  if [ ! -f ${gitFolderPath}/.cds ]; then
    git ls-files ${gitFolderPath}/modules | grep -F "/.lfrbuild-portal" | awk -F"/" '{print $(NF-1)}' | tr '\0' '\n' > ${gitFolderPath}/.cds
    test -f ${gitFolderPath}/git-commit-portal && git ls-tree -r --name-only $(cat ${gitFolderPath}/git-commit-portal) -- ${gitFolderPath}/modules | grep -F "/.lfrbuild-portal" | awk -F"/" '{print $(NF-1)}' | tr '\0' '\n' >> ${gitFolderPath}/.cds
  fi

  # keep the suggestions in a local variable
  local suggestions=($(compgen -W "$(cat ${gitFolderPath}/.cds)" -- "${COMP_WORDS[1]}"))

  if [ "${#suggestions[@]}" == "1" ]; then
    # if there's only one match, we remove the command literal
    # to proceed with the automatic completion of the number
    local number=$(echo ${suggestions[0]/%\ */})
    COMPREPLY=("$number")
  else
    # more than one suggestions resolved,
    # respond with the suggestions intact
    COMPREPLY=("${suggestions[@]}")
  fi
}

# Apply auto-complete functionality for cds
complete -F _cds cds

gitFetchPullRequest() {
 if [ $# -ge 2 ]; then
  local REPO="origin"
  local PULL_REQUEST_NUM="$1"
  local NEW_BRANCH_NAME="$2"

  if [ -n "$3" ]; then
   local REPO="$3"
  fi

  git fetch --no-tags $REPO pull/$PULL_REQUEST_NUM/head:$NEW_BRANCH_NAME
 else 
  echo "Usage: ${FUNCNAME[0]} pull-request-number new-branch-name [remote-source-name]"
 fi
}

export APP_ID='9oXTrwZ28L7zZg'
export APP_SECRET='WZ3qHNbGAeMGHwNkJQdQaTXCfMs'
export REDDIT_USERNAME='Forever_Sorry'
export REDDIT_PASSWORD='hihpl355oe'

export LIFERAY_CLOUD_USERNAME='spencer.woo@liferay.cloud'
# export LIFERAY_CLOUD_PASSWORD='preh5gnai!THAW@5'
export GITHUB_ACCESS_TOKEN='92395acda8fc8ac9e995ce0bb1f7116388dd49ca'

# mr1T1AMX-a_bzPz9-hZb gl
# eUhA3L7eb8Ay8xnwNU8Q bb

export LIFERAY_JENKINS_USERNAME='spencerwoo'
export LIFERAY_JENKINS_PASSWORD=']XA3&2aCYo'

# docker-machine start
# docker version
# dockerapache_proxypass start

# export MSYS_NO_PATHCONV=1
# export COMPOSE_CONVERT_WINDOWS_PATHS=1

dt() {
  ${LDT_REPO_PATH}/docker/dockertemplate "$@"
}

dockertemplate() {
  "${LDT_REPO_PATH}"/docker/dockertemplate "$@"
}

dockersqlserver() {
        C:/Users/liferay/Desktop/me/liferay-dev-tools/docker/templates/databases/sqlserver/dockersqlserver "$@"
}

# docker template for Apache (Proxy Pass)
# host: localhost
# port: 443 (configured via -p 443:443)
# reverse proxy:
#    ProxyPass properties in ./conf/extra/httpd-vhosts.conf:
#        ProxyPass /liferay ajp://172.17.0.1:8009
#        ProxyPassReverse /liferay ajp://172.17.0.1:8009
#
#        (by default, 172.17.0.1 should route to your localhost:8009)
#    For Liferay, add the following portal properties (modify accordingly):
#        web.server.https.port=443
#        web.server.protocol=https
#        portal.proxy.path=/liferay
# configuration files:
#     ./conf/httpd.conf
#     ./conf/extra/httpd-vhosts.conf
#     ./conf/extra/httpd-ssl.conf
# SSL (dummy certificate that was generated and set to expire in 365000 days):
#    ./conf/dummy-server.crt
#    ./conf/dummy-server.key
#
# Config file: C:/Users/liferay/Desktop/Repos/liferay-dev-tools/docker/templates/webservers/apache-proxypass/dockerapache_proxypass
#
dockerapache_proxypass() {
        C:/Users/liferay/Desktop/Repos/liferay-dev-tools/docker/templates/webservers/apache-proxypass/dockerapache_proxypass "$@"
}

# docker template for nginx
# host: localhost
# port: 8081 (configured via -p 8081:80)
# directory: ./html (configured via -v ${scriptpath_escaped}/html:/usr/share/nginx/html:ro)
#   can be used for adding custom web files
#
# Config file: C:/Users/liferay/Desktop/Repos/liferay-dev-tools/docker/templates/webservers/nginx/dockernginx
#
dockernginx() {
        C:/Users/liferay/Desktop/Repos/liferay-dev-tools/docker/templates/webservers/nginx/dockernginx "$@"
}



# tb() {
#         ${TB_PATH}/tb $@
# }

hsh() {
    git ls-files modules | grep -F build.gradle | xargs grep -Fl 'version: "[' | xargs git update-index --assume-unchanged
      git ls-files modules | grep -F build.gradle | xargs grep -Fl 'version: "[' | xargs -I {} sed -i.bak 's/version: "\[[^"]*)/version: "default/g' {}

      echo "SUCCESS : portal-kernel"

        ${SW_PATH}/hsh/hsh $@

        echo "SUCCESS : hsh"
}

# intellij
ij() {
        ${IJ_CLONE_PATH}/intellij $@ '--unload=true'
}

cd2() {
        . ${MCD_RD_CLONE_PATH}/gitcd/gitcd $@
}

#Gradle Wrapper
#alias gw='gradlew'
# alias gd='gradlew deploy'
# alias gd3='../../../gradlew deploy'
# alias gd4='../../../../gradlew deploy'
# alias gd5='../../../../../gradlew deploy'
# alias gcd4='../../../../gradlew deploy'
# alias gcd5='../../../../../gradlew clean deploy'
# alias gfs5='../../../../../gradlew formatSource'
alias rg='rm ../settings.gradle'

gw() {
        ${MCD_RD_CLONE_PATH}/gw $@
}

gw2() {
  if [ -f ../settings.gradle ]; then
   mv ../settings.gradle ../settings.gradle.tmp
  fi

  $(git rev-parse --show-toplevel)/gradlew $@

  if [ -f ../settings.gradle.tmp ]; then
   mv ../settings.gradle.tmp ../settings.gradle
  fi
}

db() {
  TAG_ARCHIVE_MIRROR='http://cloud-10-0-30-27/builds/fixpacks' \
                BRANCH_ARCHIVE_MIRROR='http://cloud-10-0-30-27/builds/branches' \
          ${MCD_RD_CLONE_PATH}/downloadbuild $@
} 

apc() {
  TAG_ARCHIVE_MIRROR='http://cloud-10-0-30-27/builds/fixpacks' \
                BRANCH_ARCHIVE_MIRROR='http://cloud-10-0-30-27/builds/branches' \
          ${MCD_RD_CLONE_PATH}/applychanges
}

rd() {
        LIFERAY_FILES_MIRROR='http://mirrors/files.liferay.com' \
                LIFERAY_RELEASES_MIRROR='http://mirrors/releases.liferay.com' \
                TAG_ARCHIVE_MIRROR='http://cloud-10-50-0-165/builds/fixpacks' \
                BRANCH_ARCHIVE_MIRROR='http://cloud-10-50-0-165/builds/branches' \
                        ${MCD_RD_CLONE_PATH}/redeploy $@
}

# gitcd
gcd() {
        . ${MCD_RD_CLONE_PATH}/gitcd/gitcd $@
}

cdb() {
        . ${MCD_RD_CLONE_PATH}/gitcd/gitcdb $@
}

cdp() {
        . ${MCD_RD_CLONE_PATH}/gitcd/gitcdp $@
}

# github
github() {
        ${MCD_RD_CLONE_PATH}/github/github $@
}

# gpr() {
#         SUBREPO_ROOT=/path/to/subrepo/root \
#                 ${MCD_RD_CLONE_PATH}/github/pullrequest $@
# }

fixdeps() {
        ${MCD_RD_CLONE_PATH}/packageinfo/fixdeps
}

findbuild() {
        FILES_MIRROR=http://mirrors/files.liferay.com \
                ${MCD_RD_CLONE_PATH}/patcher/findbuild $@
}

patcher() {
        ${MCD_RD_CLONE_PATH}/patcher/patcher
}

subrepobp() {
        SUBREPO_ROOT=/path/to/subrepo/root \
                ${MCD_RD_CLONE_PATH}/patcher/subrepobp $@
}

# tomcat
cr() {
        ${MCD_RD_CLONE_PATH}/tomcat/catalinastart
}

# alias jira=${D:\jira-cli-3.9.0}./jira.sh
# alias jira=${C:\Users\liferay\Downloads\atlassian-cli-8.8.0-distribution\atlassian-cli-8.8.0}./jira.sh
# alias jira=(cd '~/Downloads/atlassian-cli-8.8.0-distribution/atlassian-cli-8.8.0' && exec /jira.sh)
# function jira() {

# }

alias jira=cat ${C:\Users\Liferay\Downloads\1.csv}

# function groom() {

  # liferay customer code

# JIRA api

# Component
# Reproduction

# zendesk = SLA:True
# >
# SLAType
# CustomerType

# VODAFONEUKCP = 

# }

#
# Backport Automator Constants
#

CURRENTUSERGITHUBNAME=spencer.woo
CURRENTUSERJIRANAME=spencerwoo

DEFAULTGITHUBREVIEWER=sam.ziemer
DEFAULTJIRAREVIEWER=samziemer

#
# Backport Automator
#

function bpr() {
  case "$1" in
    -h)
      echo -e "Continue cherry picking from hash '$3'\n"
      cherryPickCommit $2 $3
      ;;
    -s)
      submitBpr $2
      ;;
    *)
      echo -e "Peforming automated BPR\n"
      checkoutBackportBranch $1
      cherryPickCommit $1
      ;;
  esac
}

function checkoutBackportBranch() {
  BRANCH=$(grep -F lp.version.major= release.properties | cut -d'=' -f 2 | tr -d '.')x

  git checkout -b $1-$BRANCH > /dev/null 2>&1
}

function cherryPickCommit() {
  # $1 is the LPS ticket
  # $2 is the starting hash

  IFS=$'\n'

  HASHES=($(git log --reverse --pretty=%h --grep $1 master))

  if [[ 0 -eq ${#HASHES[@]} ]]
  then
    echo "No commits match $1. Please updated your master branch or confirm the commit message is correct."

    return
  fi

  MESSAGES=($(git log --reverse --pretty=%s --grep $1 master))

  echo "Beginning cherry pick for ${#HASHES[@]} commit(s) that match '$1'"
  echo

  if [ $2 ]
  then
    CHERRYPICK=false
  else
    CHERRYPICK=true
  fi

  for ((i = 0; i < ${#HASHES[@]}; i++))
  do
    if [[ $2 = ${HASHES[i]} ]]
    then
      CHERRYPICK=true
    fi

    if [ $CHERRYPICK = false ]
    then
      continue
    fi

    git cherry-pick ${HASHES[i]} > /dev/null 2>&1

    if [ $? -eq 0 ]
    then
      echo -e "Successfully cherry picked" ${HASHES[i]} ${MESSAGES[i]}
    else
      echo -e "Could not perform cherry pick for" ${HASHES[i]} ${MESSAGES[i]}

      if [[ $(($i + 1)) -lt ${#HASHES[@]} ]]
      then
        echo "Please resolve the conflict(s) and then run 'bpr -h $1 ${HASHES[i + 1]}'"
      else
        echo "Please resolve the conflict(s) and then run 'bpr -s $1'"
      fi

      return 0;
    fi
  done

  IFS=' '

  echo -e "\nDo you wish to test the changes? (y/n): "
  read TEST

  if [[ "$TEST" == y ]] || [[ "$TEST" == Y ]]
  then
    echo -e "\nWhen done testing, submit the backport by running 'bpr -s $1'"

    return 0
  fi

  submitBpr $1
}

function submitBpr() {
  # $1 is the LPS ticket

  echo -e "\nSubmitting current branch for BPR\n"

  BACKPORTVERION=ee-$(grep -F lp.version.major= release.properties | cut -d'=' -f 2).x

  if [[ $BACKPORTVERION == ee-7.0.x ]]
  then
    BPR=$(jira -a getIssueList --search "project = BPR AND issue in linkedIssues($1, 'relates', 'is related to') AND 'Backport Version' = '7.0 EE (Fix Pack or MP Release)'" --limit 1 | grep -o BPR-[0-9]*)
  elif [[ $BACKPORTVERION == ee-6.2.x ]]
  then
    BPR=$(jira -a getIssueList --search "project = BPR AND issue in linkedIssues($1, 'relates', 'is related to') AND 'Backport Version' = '6.2 EE (fix pack)'" --limit 1 | grep -o BPR-[0-9]*)
  else
    echo "Unknown backport version. Please either checkout ee-7.0.x or ee-6.2.x."

    return
  fi

  if [[ -z $BPR ]]
  then
    echo No BPR ticket found. Creating new BPR ticket.

    if [[ $BACKPORTVERION == ee-7.0.x ]]
    then
      BPR=$(jira -a createIssue --project "BPR" --type "Backport Request" --summary "70x $1" --field "customfield_11531" --value "Support" --field2 "customfield_14424" --values2 "23335" | awk '{printf $2}')
    elif [[ $BACKPORTVERION == ee-6.2.x ]]
    then
      BPR=$(jira -a createIssue --project "BPR" --type "Backport Request" --summary "62x $1" --field "customfield_11531" --value "Support" --field2 "customfield_14424" --values2 "16327" | awk '{printf $2}')
    fi

    jira -a linkIssue --issue "$1" --toIssue "$BPR" --link "relationship" > /dev/null
  fi

  # Get the reviewer's GitHub name
  echo -n "Enter the reviewer's GitHub name and press [ENTER] ($DEFAULTGITHUBREVIEWER): "
  read GITHUBREVIEWER

  if [[ -z $GITHUBREVIEWER ]]
  then
    GITHUBREVIEWER=$DEFAULTGITHUBREVIEWER
  fi

  # Get the reviewer's Jira name
  echo -n "Enter the reviewer's Jira name and press [ENTER] ($DEFAULTJIRAREVIEWER): "
  read JIRAREVIEWER

  if [[ -z $JIRAREVIEWER ]]
  then
    JIRAREVIEWER=$DEFAULTJIRAREVIEWER
  fi

  # Get the current branch name
  CURRENTBRANCH=$(git rev-parse --abbrev-ref HEAD)

  git push origin $CURRENTBRANCH > /dev/null 2>&1

  # Create the pull request
  PULLREQUESTURL=$(git pull-request -m "$BPR / $1 | $BACKPORTVERION

  https://issues.liferay.com/browse/$BPR

https://issues.liferay.com/browse/$1" -b $GITHUBREVIEWER:$BACKPORTVERION -h $CURRENTUSERGITHUBNAME:$CURRENTBRANCH)

  # Assign the BPR ticket to the current user so they have permission to push it through the workflow
  jira -a assignIssue --issue "$BPR" --userId "$CURRENTUSERJIRANAME" > /dev/null

  # Progress BPR through workflow no matter what state it is in
  jira -a progressIssue --issue "$BPR" --step "Original Fix Committed" > /dev/null 2>&1
  jira -a progressIssue --issue "$BPR" --step "Start Progress" > /dev/null 2>&1
  jira -a progressIssue --issue "$BPR" --step "Code Review Request" --assignee "$JIRAREVIEWER" --field "customfield_10421" --values "$PULLREQUESTURL" > /dev/null 2>&1

  echo
  echo Pull Request - $PULLREQUESTURL
  echo BPR Ticket - https://issues.liferay.com/browse/$BPR
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/liferay/google-cloud-sdk/path.bash.inc' ]; then . '/Users/liferay/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/liferay/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/liferay/google-cloud-sdk/completion.bash.inc'; fi


export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

export GRADLE_HOME=/Users/liferay/gradle
export M2_HOME=/Users/liferay/apache-maven-3.1.1
export ANT_HOME=/Users/liferay/apache-ant-1.9.15

export PATH=$PATH:$GRADLE_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin

