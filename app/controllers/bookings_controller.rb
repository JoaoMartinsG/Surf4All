class BookingsController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @booking = Booking.new
  end

  def create
    @board = Board.find(params[:board_id])
    @booking = Booking.new(booking_params)
    @booking.board = @board
    @booking.user = current_user
    days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = @board.price_per_day * days
    if @booking.save
      redirect_to board_path(@board)
    else
      render :new
    end
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
    redirect_to board_path(@booking.board), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
