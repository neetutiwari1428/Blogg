class WelcomsController < ApplicationController
  def index
    @generals = General.all
    @active = Active.all
    @overview = Overview.all
    @sales = Sale.all
  end
end
