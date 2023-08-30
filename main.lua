-- Using the love2d framework
cos, sin, pi, sqrt = math.cos, math.sin, math.pi, math.sqrt
theta0 = 1
t = 0
L=300 -- Length
g=9.8 -- Gravity
phi=0 -- Phase constant
r = 70 -- Radius

function love.load()
  theta = theta0
  T = 2*pi*sqrt(L/g)
  trans = love.math.newTransform()
  trans:translate(love.graphics.getWidth()/2, love.graphics.getHeight()/2-200)
end
function love.update(dt)
  t = t+dt
  theta = theta0 * cos(2*pi*t/T + phi)
  x = L*sin(theta)
  y = L*cos(theta)
  linhax = 0
  linhay = 0
end
function love.draw()
  love.graphics.applyTransform(trans)
  love.graphics.setBackgroundColor(255, 255, 255)
  love.graphics.setColor(0, 0, 255)
  love.graphics.circle("fill", x, y, r)
  love.graphics.setColor(255, 0, 0)
  love.graphics.line(linhax, linhay, x, y)
end
