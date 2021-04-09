class ProjectsController < ApplicationController
    def dashboard
        if params[:state].present?
            @projects = Project.where('state = ?', params[:state])
        else
            @projects = Project.all
        end
    end
    def new

    end
    def create
        @project = Project.create(  name: params[:name],
                                    description: params[:description],
                                    start_date: params[:start_date],
                                    finish_date: params[:finish_date],
                                    state: params[:state])
    end
end
