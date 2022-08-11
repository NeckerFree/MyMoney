class TradingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @tradings = Trading.all
  end

  def new; end

  def create
    @trading = Tnradings.new(trading_params)
    @trading.author_id = current_user.id
    if @trading.save
      flash[:notice] = 'transaction was successfully created.'
    else
      flash[:error] = 'Error creating transaction'
    end
  end

  def update
    respond_to do |_format|
      if @trading.update(trading_params)
        flash[:notice] = 'transaction was successfully created.'
      else
        flash[:error] = 'Error creating transaction'
      end
    end
  end

  def destroy
    if @trading.destroy
      flash[:notice] = 'transaction was successfully created.'
    else
      flash[:error] = 'Error creating transaction'
    end
  end
end
