#                       #
#         UNIX          #
#                       #

# Makes a directory 
mcd(){
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

#                       #
#  Custom git commands  #
#                       #
gitam() {
  git add .
  git commit -m "$1"
}

gitamp() {
  git add .
  git commit -m "$1"
  git push
}

cdgit() {
  cd /Users/kaleb/Git_Repos/
}

# create remote repo
gitcreate() {
  # gitam "intial commit"
  curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"$1"}'
  mcd "$1"
  git init
  git am "initial commit"
  git remote add origin git@github.com:KalebGz/"$1".git
  git branch -M main
  git push -u origin main
  # curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"repository name"}'
  # git push -u origin HEAD
}

# create remote private repo
gitcreatepriv()
{
  curl -u 'kalebgz' https://api.github.com/user/repos -d '{"name":"$1", "private":"true"}'
  cd "$1"
  git init
  git remote add origin git@github.com:KalebGz/"$1".git
  git branch -M main
  git push -u origin main
}

#                       #
#         Jekyll        #
#                       #
bundleweb() {
  bundle exec jekyll serve
}


#                       #
#         Scrap         #
#                       #

# Runs set of commands for pushing local directory to a remote repo on github
# gitpush() {
#   git remote add origin https://github.com/KalebGz/"$1".git
#   git branch -M main
#   git push -u origin main
#   }


### Flatiron
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