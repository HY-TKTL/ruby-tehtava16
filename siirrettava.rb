module Siirrettava
  def siirraPisteeseen(x,y)
    @x = x
    @y = y
  end

  def siirraSuuntaan(dx,dy)
    @x += dx
    @y += dy
  end
end