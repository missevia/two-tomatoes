class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  def index
    @chefs = policy_scope(Chef).order(created_at: :desc)
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def new
    @chef = Chef.new
    authorize @chef
  end

  # def edit
  #   @chef = Chef.find(params[:id])
  # end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    authorize @chef

    if @chef.save
      redirect_to chef_path(@chef)
    else
      render :new
    end
  end

  def update
    @chef = Chef.find(params[:id])
    @chef.update(chef_params)
  end

  def destroy
    @chef = chef.find(params[:id])
    authorize @chef
    @chef.destroy
    redirect_to chefs_path
  end

  private

  def set_chef
    @chef = Chef.find(params[:id])
    authorize @chef
  end

  def chef_params
    params.require(:chef).permit(:name, :specialty, :rating, :description)
  end
end
