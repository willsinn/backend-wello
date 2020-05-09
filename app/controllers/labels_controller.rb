class LabelsController < ApplicationController
  def index
    labels = Label.all
    render json: labels
  end

  def show
    label = Label.find(params[:id])
    render json: label
  end

  def create
    task_label = TaskLabel.create(task_id: params[:task_id], label_id: params[:id])
    render json: task_label
  end

  def update
    label = Label.find(params[:id])
    label.update(label_params)
    render json: label
  end
  private 
    def label_params
      params.permit(:task_id, :name, :color)
    end
end
