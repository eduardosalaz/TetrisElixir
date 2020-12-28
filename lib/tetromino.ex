defmodule Tetris.Tetromino do
    defstruct [
        name: :o,
        location: {40,0},
        rotation: 0,
        reflection: false
    ]
    def new(), do: __struct__() #one liner para las funciones


    def new_random() do
        %__MODULE__{ #un mapa en elixir se crea usando la sintaxis %{}, agrega el nombre del módulo actual
            name: random_name(),
            location: {40,0},
            rotation: random_rotation(),
            reflection: random_reflection()
        }
    end

    def random_name() do
        ~w(i l z o t)a #usa un sigil para crear un array de átomos
        |> Enum.shuffle #pipea una vez
        |> List.first #sigue pipeando
    end

    def random_rotation() do
        [0,90,180,270]
        |> Enum.random
    end
    
    def random_reflection() do
        [true, false]
        |> Enum.shuffle
        |> List.first
    end

    def down(tetromino) do
        %{Tetromino| location: point_down(Tetromino.location)} #actualiza solo el valor de la key especificada usando |
    end

    def point_down({x,y}) do
        {x, y+1} #usa deestructuras
    end

    def left(tetromino) do
        nil
    end

    def right(tetromino) do
        nil
    end

    def spin_90(tetromino) do
        nil
    end

    def rotate(tetromino, degrees) do
        nil
    end
end
