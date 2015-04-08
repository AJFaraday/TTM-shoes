#:
# Andrew Faraday - Apr 2015
#
# This class handles the connection to Pure Data.
#

class ManualInput

  attr_accessor :app
  attr_accessor :pd

  attr_accessor :field
  attr_accessor :trigger
  attr_accessor :title
  attr_accessor :target
  attr_accessor :output

  def initialize(app, pd)
    self.app = app
    self.pd = pd     

    init_ui
  end

  def init_ui	
    app.stack do
      app.background '#7777ff'
      self.title = app.title(
        "Pd Connection",
        size: 'large'
      )
      app.flow do
        self.field = app.edit_line
        self.trigger = app.button('Play')
      end
      self.target = app.para 'target'
      self.output = app.para 'output'
    end
    self.trigger.click { play_field }
  end

  def play_field
    trigger.hide
    target.replace(field.text)
    send_string(field.text)
  end 

  def send_string(string)
    chars = string.chars

    output.text = ''
    anim = app.animate(6) do |i| 
      c = chars[i]
      unless c
        trigger.show
        anim.stop
      end
      output.text += c
      pd.send_char(c)
    end
  end

end

