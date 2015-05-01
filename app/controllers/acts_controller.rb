class ActsController < ApplicationController
  COSTS = [ 
            [ "$", 1],
            [ "$$", 2],
            [ "$$$", 3]
          ]
  EFFORTS = [
              [ "Easy", 1 ],
              [ "Medium", 2 ],
              [ "Hard", 3 ]
            ]
  TIMES = [
            [ "Less than one hour", 1 ],
            [ "1-3 hours", 2 ],
            [ "More than 3 hours", 3 ]
          ]

  def new
    @act = Act.new
    @costs = COSTS
    @efforts = EFFORTS
    @times = TIMES
  end

  def create
    @act = Act.new(params[ :act ])
    if @act.save
      flash[:success] = "The act of kindness was successfully saved!"
      redirect_to new_acts_path
    else
      render new_acts_path
    end
  end

  def get_raks
    @acts = Act.limit(10).order("RANDOM()")
  end
end
