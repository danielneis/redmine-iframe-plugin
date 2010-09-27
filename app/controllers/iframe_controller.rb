class IframeController < ApplicationController
  unloadable

  def index
      @project = Project.find(params['project_id'])
      @source_url = Setting.plugin_redmine_iframe['source_url']
      @title = Setting.plugin_redmine_iframe['title']
  end
end
