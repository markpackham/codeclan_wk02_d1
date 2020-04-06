class Team
    attr_reader :team_name, :players, :coach
    attr_writer :coach
  
    def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
    end

    def add_player(new_player)
        @players.push(new_player)
    end

    def check_for_player(player)
        for play in @players
            if(play == player)
                return true

            else 
                return false
            end

        end
    end

end