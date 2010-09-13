require 'redmine'

Redmine::Plugin.register :redmine_iframe do
  name 'Redmine iframe plugin'
  author 'Daniel Neis'
  description 'Adds a tab with configurable caption that shows an iframe with a configurable source'
  version '0.0.1'
  url ''
  author_url ''

  settings :default => { 'source_url' => '', 'tab_caption' => 'iframe', 'title' => '' }, :partial => 'settings/settings'

  project_module :iframe do
      permission :iframe, {:iframe => [:index]}, :public => true
  end

  config.to_prepare do
      menu :project_menu, :iframe, { :controller => 'iframe', :action => 'index' },\
           :caption => Setting.plugin_redmine_iframe['tab_caption'], :last => true, :param => :project_id
  end

end
