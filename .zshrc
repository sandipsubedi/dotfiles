# location: ~/.zshrc

# vi ~/.zshrc

# clear
alias c='clear'

# bundle
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# rails: app
alias cs_s='passenger start --ssl --environment development --debugger --ssl-certificate ./localhost.crt --ssl-certificate-key ./localhost.key --port 3000'
alias cs_w='QUEUE=* bundle exec rake RAILS_ENV=development resque:work'

# rails: db
alias db_m='be rake db:migrate'
alias db_l='be rake db:schema:load'
alias db_s='be rake db:seed'

alias db_r_1='be rake db:rollback STEP=1'
alias db_r_2='be rake db:rollback STEP=2'
alias db_r_3='be rake db:rollback STEP=3'
alias db_r_4='be rake db:rollback STEP=4'
alias db_r_5='be rake db:rollback STEP=5'

# history
alias h_grep='history | grep'

# lint : rails with haml
alias ruby_lint='be rubocop'
alias js_lint='yarn lint'
alias haml_lint='be haml-lint app/views'
alias linters='ruby_lint && haml_lint && js_lint'

# process
alias 3000_pid='sudo lsof -i :3000'

# spec : rails
alias ruby_spec='be rspec'
alias ruby_spec_ff="be rspec --fail-fast"
alias js_spec='rails jasmine:ci'

# security : rails
alias brakeman='be brakeman-pro -z -5 --no-progress --separate-models -o brakeman-output.tabs -o /dev/stdout'

# yarn
alias yi='yarn install'
alias yu='yarn upgrade'

# zsh
# reload zsh session
alias zs='exec zsh'
#open with vim
alias zo='vi ~/.zshrc'
