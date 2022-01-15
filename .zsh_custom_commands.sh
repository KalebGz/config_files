#-------------------------------- Unix Shortcuts -------------------------------- #

# create and cd into new dir
mcd(){
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}



#-------------------------------- GITHUB CUSTOM COMMANDS -------------------------------- #
gitam() {
  git add .
  git commit -m "$1"
}

gitc() {
  # gitam "intial commit"
  curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"'"$1"'"}'

  cd "$1"
  git init
  git remote add origin git@github.com:KalebGz/"$1".git
  git branch -M main
  git push -u origin main
  # curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"repository name"}'
  # git push -u origin HEAD
}


gitcreatep()
{
  curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"'"$1"'", "private":"true"}'
  cd "$1"
  git init
  git remote add origin git@github.com:KalebGz/"$1".git
  git branch -M main
  git push -u origin main
}


# push an existing repository from the command line
gitaddrem() {
  git remote add origin "$1"
  git branch -M main
  git push -u origin main
}


#-------------------------------- OLD CUSTOM COMMANDS --------------------------------#

      # Commands for Flatiron
# Opens up a flatiron directory
# cdf(){
#   cd ~
#   cd -- "Flatiron/code/$1"
# }

# # # Clones a github repo and opens VS code inside the local dir
# gclone() {
#   cdf labs
#   git clone "$1" && cd "$(basename "$1" .git)"
#   bundle install
#   Code -r .
# }