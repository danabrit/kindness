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
  end

  def get_raks
    @acts = Act.limit(10).order("RANDOM()")
  end
end
