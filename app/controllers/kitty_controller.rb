class KittyController < ApplicationController
  def new
    @kitty = Kitty.new
  end

  def create
    @kitty = Kitty.new(params[:kitty])
    if @kitty.save
      redirect_to @kitty
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def index
    @kitties = Kitty.all
  end
end
