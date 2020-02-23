class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  def create
    project = Project.create(project_params)
    join_project = UserProject.create(user_id: params[:user_id], project_id: project.id)
    render json: project
  end

  def update
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
  end
    private
    def project_params
      params.permit(:user_id, :title, :background, :team_name)
    end
end
