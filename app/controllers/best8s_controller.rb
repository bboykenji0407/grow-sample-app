class Best8sController < ApplicationController
  def index
  end
  
  def new
    @best8 = Best8.new
  end

  def create
    @best8 = Best8.create(best8_params)
    if @best8.save
      redirect_to best8s_new_path
    else
      render :new
    end
  end

  def show
    @best8s = Best8.all
  end

  private

  def best8_params
    params.require(:best8).permit(:battler_id, :foundation, :originality, :accuracy, :dynamic, :strategy, :score).merge(user_id: current_user.id)
  end
end
