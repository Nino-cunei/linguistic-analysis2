PS1='\u:\w > '
function cdd {
    cd ~/github/*/$1
}

function gita {
    git add --all .
}

function gitc {
    if [[ "$1" == "" ]]; then
        echo "Provide a commit message"
    else
        git commit -m "$1"
    fi
}

function gitpl {
    git pull origin master
}

function gitps {
    git push origin master
}

function gity {
    if [[ "$2" == "" ]]; then
        echo "Provide a commit message"
    else
        echo "o-o-o-o-o-o-o-o-o-o-o-o-o GIT SEND 
o-o-o-o-o-o-o-o-o-o-o-o-o-o-o $1 o-o-o-o-o-o-o-o"
        echo ""
        cd ~/github/*/$1
        echo "- - - - - - - - - - - - - GIT ADD    - - - - - - - - - - - 
- - - - - - - - - - - "
        gita
        echo "- - - - - - - - - - - - - GIT COMMIT - - - - - - - - - - - 
- - - - - - - - - - - "
        gitc "$2"
        echo "- - - - - - - - - - - - - GIT PUSH   - - - - - - - - - - - 
- - - - - - - - - - - "
        gitps
        echo ""
        echo "o-o-o-o-o-o-o-o-o-o-o-o-o-GIT DONE 
o-o-o-o-o-o-o-o-o-o-o-o-o-o-o $1 o-o-o-o-o-o-o-o"
    fi
}

