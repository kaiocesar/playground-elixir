defmodule Contador do
 def contador([]), do: 0
 def contador([head|tail]), do:
 	1 + contador(tail)

end
