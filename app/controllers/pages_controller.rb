class PagesController < ApplicationController
  def home
    @roasters = Roaster.all
  end
end
