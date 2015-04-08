require './application.rb'

Shoes.app do

  stack do 
    title 'TTM Shoes'
  end 

  ManualInput.new(self,PureData.new('3939'))
  ManualInput.new(self,PureData.new('3838'))


end
