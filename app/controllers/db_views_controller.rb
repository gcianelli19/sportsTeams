class DbViewsController < ApplicationController
    @sports_teams = ''
    @lineNumber = 1
    def teamSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("teamName")
    end

    def citySort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("city")
    end

    def stadiumSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("stadium")
    end

    def leagueSort
        @lineNumber = 1
        @sports_teams = SportsTeam.where("city LIKE '%Illinois%'").order("league")
    end
end
