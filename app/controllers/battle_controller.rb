class BattleController < ApplicationController
    before_action :authenticate_user!

    def index
        @bagmons = Bagmon.all
    
        if (params[:firstBagmon] && params[:secondBagmon]) 
          @firstBagmon = Bagmon.find(params[:firstBagmon])
          @secondBagmon = Bagmon.find(params[:secondBagmon])
          @rounds = []
    
          lifefirstBagmon = 100
          lifesecondBagmon = 100
    
          # Random bagmon attack first
          bagmonAttacking = rand(1..2) == 1 ? @firstBagmon : @secondBagmon
    
    
          while (lifefirstBagmon > 0 && lifesecondBagmon > 0) do
    
            # Bagmon 1 attack bagmon 2 and remove random between 5 adn 10 life points
    
            if (bagmonAttacking == @firstBagmon)
              attack = rand(5..15)
              lifesecondBagmon -= attack
              @rounds << @firstBagmon.name + " atacou " + @secondBagmon.name+ " e infligiu #{attack} de dano."
              bagmonAttacking = @secondBagmon
            else
              attack = rand(5..15)
              lifefirstBagmon -= attack
              @rounds << @secondBagmon.name + " atacou " + @firstBagmon.name + " e infligiu #{attack} de dano."
              bagmonAttacking = @firstBagmon
            end
          end
    
          # Display winner
          if (lifefirstBagmon <= 0)
            @rounds << @secondBagmon.name + ", o Bagmon aliado venceu!"
          elsif (lifesecondBagmon <= 0)
            @rounds << @firstBagmon.name + ", o Bagmon inimigo venceu!"
          end
        end
    
      end
end
