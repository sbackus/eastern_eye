class ClientsController < ApplicationController
  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.new(params[:weapon])
    if @weapon.save
      redirect_to @weapon
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def index
    @weapons = Weapons.all
  end
end
