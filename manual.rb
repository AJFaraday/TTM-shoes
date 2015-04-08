require './application.rb'

Shoes.app do

  stack do 
    title 'TTM Shoes'
  end 
  @play_all = button 'Play All'

  @inputs = []

  # TODO set these up to use config file
  @inputs << ManualInput.new(self,PureData.new('3939'))
  @inputs << ManualInput.new(self,PureData.new('3838'))

  @play_all.click do
    @inputs.each{|i|i.play_field}
  end

end
