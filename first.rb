require './application.rb'

Shoes.app do

  flow do
    para 'x:'
    @x = para 'XXX'
  end

  flow do
    para 'y:'
    @y = para 'YYY'
  end

  motion do |left, top|
    @x.replace(left)
    @y.replace(top)
  end

  @shoes = image(
    "http://spiralofhope.com/i/ruby-shoes--shoes.png",
    top:  100,
    left: 100
  )
  animate do |i|
    @shoes.top += (-20..20).rand
    @shoes.left += (-20..20).rand
  end

end
