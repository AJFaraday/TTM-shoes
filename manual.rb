require './application.rb'

Shoes.app do

  stack do 
    title 'TTM Shoes'
  end 

  @input = ManualInput.new(
    self,
    'PLACEHOLDER'
  )

end
