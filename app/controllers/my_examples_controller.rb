class MyExamplesController < ApplicationController
  def random_fortune
    fortunes = [
      "You will have a great day!",
      "Tomorrow will be the worst day of your life",
      "Your future is filled with success"
    ]
    x = rand(0..2)
    render json: {"Fortune": fortunes[x]}
  end
  
  def lotto
    random_lotto = []
    6.times do 
      number = rand(1..60)
      random_lotto << number
    end 
    render json: {"Lotto number": random_lotto}
  end 
  
  def revisits
    count = 0 

  end 

  def bottles 
    x = 99 
    y = 100 
    99.times do 
      y = y - 1
      x = x - 1
      "#{y} bottles of beer on the wall, #{y} bottles of beer.
      Take one down and pass it around, #{x} bottles of beer on the wall."
    end 

    cont = ["No more bottles of beer on the wall, no more bottles of beer. 
    Go to the store and buy some more, 99 bottles of beer on the wall."]
    render json: {"Lyrics": lyrics cont }
  end 

end
