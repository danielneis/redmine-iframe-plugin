class SagController < ApplicationController
  unloadable

  def index
      @project = Project.find(params[:id])
  end
end
