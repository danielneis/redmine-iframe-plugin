require 'redmine'

Redmine::Plugin.register :redmine_sag_setic do
  name 'Redmine SAG plugin'
  author 'Daniel Neis'
  description 'This is a tool that embeds SAG into Redmine'
  version '0.0.1'
  url ''
  author_url ''

  permission :sag, {:sag => [:index]}, :public => true
  menu :project_menu, :sag, { :controller => 'sag', :action => 'index' }, :caption => 'SAG', :last => true
end
