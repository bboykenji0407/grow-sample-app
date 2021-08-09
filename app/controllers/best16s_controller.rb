class Best16sController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def index
  end

  def new
    @best16 = Best16.new
  end

  def create
    @best16 = Best16.create(best16_params)
    if @best16.save
      redirect_to best16s_new_path
    else
      render :new
    end
  end

  def show
    @best16s = Best16.order("battler_id")
  end

  private

  def best16_params
    params.require(:best16).permit(:battler_id, :foundation, :originality, :accuracy, :dynamic, :strategy, :score).merge(user_id: current_user.id)
  end
end
