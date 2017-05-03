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
end
