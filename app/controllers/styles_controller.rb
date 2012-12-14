class StylesController < ApplicationController
  def new
    @style = Styles.new
  end

  def create
    @style = Styles.new params[:styles]
    if @style.save
      @style.delay.calculate_css
      redirect_to @style, status: 303 # see other
    else
      render status: 400 # bad request
    end
  end

  def show
    begin
      @style = Styles.find params[:id]
    rescue ActiveRecord::RecordNotFound
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
