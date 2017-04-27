class HomeController < ApplicationController
  def index
    @lineNumber = 1
    @teams = SportsTeam.where("city LIKE '%Illinois%'")

  end
end
