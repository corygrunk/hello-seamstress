--- hello seamstress
-- super basic seamstress template

local counter = 0

function init()
  print('hello lua')
  redraw()
  clock.run(play)
end

function play()
  while true do
    clock.sync(1/2)
    counter = counter + 1
    redraw()
  end
end

function redraw()
  screen.clear()
  screen.color(180, 255, 252, 0.8)

  screen.move(20, 20)
  screen.text('Hello.')

  screen.move(20,30)
  screen.text('I can count to ' .. counter .. '.')

  screen.refresh()
end
