class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show
  end

  def create
    project = Project.create(project_params)
    join_project = UserProject.create(user_id: params[:user_id], project_id: project.id)
    render json: project
  end

  def update
  end

  def destroy
  end
    private
    def project_params
      params(:user_id).permit(:name, :user_id)
    end
end
