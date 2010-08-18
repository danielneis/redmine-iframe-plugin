require 'redmine'

Redmine::Plugin.register :redmine_lit_npd do
  name 'Redmine Lit Npd plugin'
  author 'Daniel Neis'
  description 'This is a plugin for embed LIT into Redmine'
  version '0.0.1'
  url 'http://redmine.npd.ufsc.br'
  author_url ''

  permission :lit, {:lit => [:index]}, :public => true
  menu :project_menu, :lit, { :controller => 'lit', :action => 'index' }, :caption => 'LIT', :last => true
end
