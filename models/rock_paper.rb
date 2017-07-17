class RockPaperScissor

  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end


  def winner(rps)
 
          rps=[1, 2, 3]
        
  
          if rps==1; puts "You got paper!" end
          if rps==2; puts "You got scissors!" end
          if rps==3; puts "You got rock - you win!!" end

   end
  

end