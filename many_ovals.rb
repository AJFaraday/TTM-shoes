Shoes.app(width: 300, height: 400) do
  fill rgb(0, 0.6, 0.9, 0.1)
  stroke rgb(0, 0.6, 0.9)
  strokewidth 0.25

  @ovals = []

   100.times do
    @ovals << oval(
      left:   (0..self.width).rand,
      top:    (0..self.height).rand,
      radius: (5..100).rand
    )
  end

  @ovals.each do |oval|
    animate do |i|  
      oval.top += (-10..10).rand
      oval.left += (-10..10).rand
    end
  end
end
