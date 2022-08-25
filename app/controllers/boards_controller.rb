class BoardsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = <<~SQL
        boards.type_of_board ILIKE :query
        OR boards.tail_shape ILIKE :query
        OR boards.fins_type ILIKE :query
        OR boards.location ILIKE :query
      SQL
      @boards = Board.where(sql_query, query: "%#{params[:query]}%")
    else
      @boards = Board.all
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.volume = @board.width * @board.length * @board.thickness
    @board.user = current_user

    if @board.save
      redirect_to board_path(@board)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def board_params
    params.require(:board).permit(:description, :type_of_board, :tail_shape, :fins_type, :location, :width, :length, :thickness, :price_per_day, photos: [])
  end
end
