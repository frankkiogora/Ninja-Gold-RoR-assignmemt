class GamesController < ApplicationController

  
  
    def init
      session[:balance] = 0
      session[:activities] = Array.new()
      render('/games/display')
    end
  
    def display
    end
  
    def farm
      earnings = rand(10..20)
      session[:balance] += earnings
      message = "<span id='green'>You entered a farm and earned #{earnings} golds."
      render('/games/display')
    end
  
    def cave
      earnings = rand(5..10)
      session[:balance] += earnings
      message = "<span id='green'>You entered a cave and earned #{earnings} golds.";
      render('/games/display')
    end
  
    def house
      earnings = rand(2..5)
      session[:balance] += earnings
      message = "<span id='green'>You entered a house and earned #{earnings} golds.";
  
      render('/games/display')
    end
  
    def casino
      earnings = rand(-50..50)
      session[:balance] += earnings
        if (earnings > 0)
            message = "<span id='green'>You entered a casino and earned #{earnings} golds.";
        else
            earnings = earnings * -1;
            message = "<span id='red'>You entered a casino and lost #{earnings} golds... Ouch.";
        end
  
      redirect_to('/games/display')
    end
end