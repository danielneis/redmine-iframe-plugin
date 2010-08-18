class LitController < ApplicationController
  unloadable

  def index
      @project = Project.find(params[:id])
  end
end
