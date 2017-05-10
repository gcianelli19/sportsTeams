class DbViewsController < ApplicationController
    @sports_teams = ''
    @lineNumber = 1
    def teamSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("teamName")
        #@sports_teams = SportsTeam.all.order("teamName")
    end

    def citySort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("city")
        #@sports_teams = SportsTeam.all.order("city")
    end

    def stadiumSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("stadium")
        #@sports_teams = SportsTeam.all.order("stadium")
    end

    def leagueSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("league")
        #@sports_teams = SportsTeam.all.order("league")
    end

    def editCustom
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_sports_team
      @sports_team = SportsTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sports_team_params
      params.require(:sports_team).permit(:teamName, :city, :stadium, :league)
    end

    d
end
