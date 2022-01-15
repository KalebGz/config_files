# # Makes a directory 
mcd(){
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

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

      #  Custom git commands
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


# Runs set of commands for pushing local directory to a remote repo on github
# gitpush() {
#   git remote add origin https://github.com/KalebGz/"$1".git
#   git branch -M main
#   git push -u origin main
#   }