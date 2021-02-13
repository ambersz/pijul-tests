# setup git repo
git init repo && cd repo && touch first && git add first && git commit -m "first"
# import git repo to pijul repo
pijul git
# check tracked files
pijul ls
# expected:
# first

# actual:
# first
# home
# home/user
# home/user/git
# home/user/git/repo