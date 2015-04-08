# How to use shoes (in linux):

* Download shoes (shoesrb.com/downloads)
* `cd ~/Downloads`
* `sudo ./shoes-3.2.22-gtk2-x86_64.install` (version may be different)
* You can now open shoes from the menu
* Select 'Open an App'
* Select first.rb from shoes directory

## Types of block

```ruby
Shoes.app do

end
```

The main shoes application holder

```ruby
stack do

end
```

Keeps UI elements arranged vertically

```ruby
flow do 

end
```

Keeps UI elements arranges horizontally

```ruby
animate do |i| 

end
```

This appears to perform the block repeatedly at an interval. The argument would appear to be the number of iterations.

## Types of UI element

```ruby
button ('label') do

end
```

A button, can also be expressed as

```ruby
trigger = button('label')
trigger.click do

end
```

It appears links work in exactly the same way

```ruby
link('link') do

end
```

```ruby
title 'title'
para 'some text'
```

Text elements, can be set to parameters and modified.

```ruby
edit_line
```

Appears to be a single line text editor.

## Decoration

```ruby
star(left: 100, top: 100, points: 5)
oval(left: 100, top: 100, radius: 40)
rect(left:  10, top:  10, width: 40)
arrow(left: 10, top:  10, width: 40)
...
```

These basically draw the declared shape.
You can declare simple SVG style drawing instructions with some of these:

```ruby
fill rgb(0, 0.6, 0.9, 0.1)
stroke rgb(0, 0.6, 0.9)
strokewidth 0.25
```

Fill is the inside of a shape.
Stroke is the outside line.
Strokewidth is the size of the outer line.
RGB has arguments ranging from 0 to 1, for red, green, blue and alpha (transparency, low values are more transparrent)

Remember to put these in the code before the shape declaration.

```ruby
image("http://spiralofhope.com/i/ruby-shoes--shoes.png",
      top:  100,
      left: 100)
```

An image, with URL (can this be local?)



