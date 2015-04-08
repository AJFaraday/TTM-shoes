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

```ruby
title 'title'
para 'some text'
```

Text elements, can be set to parameters and modified.

```ruby
edit_line
```

Appears to be a single line text editor.

