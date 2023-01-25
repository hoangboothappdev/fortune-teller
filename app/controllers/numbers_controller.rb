class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @unlucky_array = Array.new

    5.times do 
      unlucky_num = rand (1...100)
      @unlucky_array.push(unlucky_num)
    end
    render ({ :template => "lottery_stuff/unlucky_num.html.erb"})

  end
  
end
