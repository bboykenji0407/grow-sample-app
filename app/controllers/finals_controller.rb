class FinalsController < ApplicationController
  def index
  end

  def new
    @final = Final.new
  end

  def create
    @final = Final.create(final_params)
    if @final.save
      redirect_to finals_new_path
    else
      render :new
    end
  end

  def show
    @finals = Final.all
  end

  private

  def final_params
    params.require(:final).permit(:battler_id, :foundation, :originality, :accuracy, :dynamic, :strategy, :score).merge(user_id: current_user.id)
  end
end
