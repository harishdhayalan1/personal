
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# ImageMagick links
export MAGICK_HOME="$HOME/ImageMagick-7.0.10"
export PKG_CONFIG_PATH=/Users/user/ImageMagick-7.0.10/lib/pkgconfig


export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/mysql/lib:$MAGICK_HOME/lib
export PS1="\[\e[0;33;1m\]BASH > \[\e[m\]"
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
set runtimepath^=~/.vim/bundle/ctrlp.vim
export CPATH=`xcrun --show-sdk-path`/usr/include
alias google="cd ~/programs_directory/c++/google"
alias vi="/usr/local/Cellar/vim/8.1.2050/bin/vim"
alias vim="/usr/local/Cellar/vim/8.1.2050/bin/vim"
export EDITOR=/usr/local/bin/vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/include/python2.7/"
export M2_HOME=/opt/apache-maven-3.6.3
export PATH=$PATH:/Users/user/programs_directory/shell_scripts:/Users/user/.rvm/gems/ruby-2.3.7/bin:$M2_HOME/bin
export PATH=/bin:/usr/bin:/usr/local/bin:/usr/local/mysql/bin:$MAGICK_HOME/bin:/Users/user/programs_directory/bash_scripts:${PATH}



alias localmysql="mysql -u root"
alias precompile_assets="bundle exec rake assets:precompile"
alias bi="bundle install"
alias my_commits="git log --author="harish.dhayalan@freshworks.com" --oneline -10"
alias check_syntax="git diff --name-only --staged  '*.rb'  | xargs -I _p -- sh -c 'echo _p; ruby -c _p'"
alias ss="bundle exec rails s"
alias sc="bundle exec rails c"
alias mem="memcached -vv"
alias redis="redis-server"
alias last_commit_message="git log --format=%B -n 1"
alias stash="git stash"
alias gtest="g++ -std=c++11 -lgtest -lgtest_main"
alias gs="git status"
alias gd="git diff HEAD"
alias gp="git pull"
alias gb="git branch"
alias sidekiq='bundle exec sidekiq -C config/sidekiq_client.yml'
alias greset="git reset --hard"
alias unstage="git reset HEAD $1"
alias gadd="git add ."
alias ssh-bashtion="ssh -A harishdhayalan@3.94.235.169"
alias spring_stop="spring stop"



stty -ixon

bold=$(tput bold)
normal=$(tput sgr0) 


gdiff() {

	DIFF="$(git diff)"
	cat $DIFF

}

run_bash() {
  source ~/.bash_profile
}
stash_show () {

  git stash show $1
}

add() {
  git add $1
}

commit_and_push() {
  git commit -m "$1"
  git push
}
stash_apply () {

  git stash apply $1
}
stash_list () {

  git stash list
}
rails_test() {

  export RAILS_ENV='test'
  export RSPEC='true'
  echo "${bold}Switched to TEST environment${normal}"
}

sample_cpp() {
  echo '#include <iostream>

using namespace std;

int main() {
  return 0;
}' > "$1.cpp"
}


rails_dev() {
  export RAILS_ENV='development'
  unset RSPEC
  echo "${bold}Switched to DEV environment${normal}"
}

gc() {
  git checkout $1

}
process() {
	ps aux | grep "$1"
}


gitcout() {

	git checkout "$1"

}

gtest_template() {
  touch $1;
  echo " #include <gtest/gtest.h>

  using namespace std;

  TEST(SampleTest, Case1) {
    ASSERT_TRUE(1==1);
  }

  int main(int argc,char **argv) {
    testing::InitGoogleTest(&argc,argv);
    return RUN_ALL_TESTS();
  } " >> $1;

}

run_bootstrap() {
	echo "${bold}Running DB:DROP${normal}"
	rake db:drop
	echo "${bold}Running DB:CREATE${normal}"
	rake db:create
	echo "${bold}Running DB:BOOTSTRAP${normal}"
	rake db:bootstrap
}


run_test() {
	git checkout -f itil_master
	git pull
	bundle install
	echo "${bold}Running brakeman in Itil_Master ${normal}"
	rake brakeman:run_summary
	current_report_path="`pwd`/security/brakeman_report.html"	
	master_path="$HOME/Desktop/master_brakeman_`date`.html"
	echo "Moving the report to $current_report_path to $master_path"
	git checkout -f $1
	git pull
	bundle install
	echo "${bold}Running brakeman in $1  ${normal}"
	rake brakeman:run_summary
	diff $current_report_path $master_path	
}


ce() {

	if [ -d $1 ]; then
		cd $1
	else
		mkdir $1
		cd $1
	fi


}


test_env() {
  export RAILS_ENV='test'
  export RSPEC=true
}

export PATH="/usr/local/opt/vim@7.4/bin:$PATH"
# explictly setting gemset as itildesk.
source /Users/user/.rvm/scripts/rvm
export LC_ALL=en_US.UTF-8
rvm use 2.4.7
