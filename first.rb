require './application.rb'

Shoes.app do

  background '#5555FF' 

  @push = button "Push me"
  @note = para "Nothing pushed so far"

  @push.click do
    @note.replace "Aha! Click!"
  end

end
