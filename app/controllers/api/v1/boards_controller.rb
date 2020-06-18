class Api::V1::BoardsController < ApplicationController
  def index
    boards = Board.all
    render json: boards
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end

  def create
    board = Board.create(board_params)
    join_board = UserBoard.create(user_id: params[:user_id], board_id: board.id)
    render json: board
  end

  def update
    board = Board.find_by(id:params[:id])
    board.update(board_params)
    render json: board
  end

  # def destroy
  #   board = Board.find(params[:id])
  #   board.destroy
  # end
  def archived
    boards = Board.all
    u_id = params[:user_id]
    a = boards.select { |b| b.u_id? }
    byebug
    user_boards = []
    boards.each do |n|
      if n.even?
        user_boards << n
      end
    end
    user_boards
    
  end
    private
    def board_params
      params.permit(:user_id, :title, :board_desc, :background, :team_name, :starred, :archived)
    end
end
