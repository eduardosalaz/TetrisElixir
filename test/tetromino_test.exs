defmodule TetrominoTest do
  use ExUnit.Case
  import Tetris.Tetromino


  test "Creates a new brick" do
    assert new_tetro().name == :o
  end

  test "Creates a new random brick" do
    actual = new_random()

    assert actual.name in [:i, :l, :z, :t, :o] #revisa si el atributo se encuentra en un arreglo
    assert actual.rotation in [0,90,180,270]
    assert actual.reflection in [true, false]

  end


  def new_tetro(), do: new() #one liner para las funciones 
end
