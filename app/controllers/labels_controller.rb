class LabelsController < ApplicationController
  def index
    labels = Label.all
    render json: labels
  end
  def task_labels
    task_labels = TaskLabel.all
    render json: task_labels
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
  def destroy
    task_label = TaskLabel.find(params[:task_label_id])
    task_label.destroy
  end
  private 
    def label_params
      params.permit(:task_id, :name, :color, :task_label_id)
    end
end
