class Best16sController < ApplicationController
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
    @best16s = Best16.all
    
  end

  private

  def best16_params
    params.permit(:battler_id, :foundation, :originality, :accuracy, :dynamic, :strategy, :score).merge(user_id: current_user.id)
  end
end
