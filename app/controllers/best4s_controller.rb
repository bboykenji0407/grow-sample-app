class Best4sController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def index
  end

  def new
    @best4 = Best4.new
  end

  def create
    @best4 = Best4.create(best4_params)
    if @best4.save
      redirect_to best4s_new_path
    else
      render :new
    end
  end

  def show
    @best4s = Best4.all
  end

  private


  def best4_params
    params.require(:best4).permit(:battler_id, :foundation, :originality, :accuracy, :dynamic, :strategy, :score).merge(user_id: current_user.id)
  end

end
