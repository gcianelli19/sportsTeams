class SearchController < ApplicationController
    def search
        @results=0
        if !params[:hoorayForSearch].nil?
            @results=1
            @searchinput = params[:hoorayForSearch]
            @searchcriteria="%"+@searchinput+"%"
            @teams = SportsTeam.where("teamName like '"+@searchcriteria+"' or city like '"+@searchcriteria+"' or stadium like '"+@searchcriteria+"'")
        end
    end 

    def picker
        @results=0
        @queryResults = 0
        if !params[:selection] == "teamName"
            @queryResults = SportsTeam.all.order('teamName')
        end

    end                
end
