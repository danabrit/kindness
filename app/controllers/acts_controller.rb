class ActsController < ApplicationController
  def get_raks
    @acts = Act.limit(10).order("RANDOM()")
  end
end
