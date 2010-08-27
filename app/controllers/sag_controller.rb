class SagController < ApplicationController
  unloadable

  def index
      @project = Project.find(params[:id])
      @lit_url = Setting.plugin_redmine_sag['lit_url']
  end
end
