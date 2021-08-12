module Tests exposing (..)

import Expect
import HelloWorld exposing (..)
import Test exposing (..)

neighbors2 : Test
neighbors2 =
    describe "isAliveNextTurn works"
        [
        test "Living cell with less than 2 neighbors dies" <|
            \_ -> isAliveNextTurn True 1 |> Expect.equal False,
        test "Living cell with 2 neighbors survives" <|
            \_ -> isAliveNextTurn True 2 |> Expect.equal True,
        test "Living cell with 3 neighbors survives" <|
            \_ -> isAliveNextTurn True 3 |> Expect.equal True,
        test "Living cell with 4 neighbors dies" <|
            \_ -> isAliveNextTurn True 4 |> Expect.equal False,
        test "Dead cell with 4 neighbors stays dead" <|
            \_ -> isAliveNextTurn False 4 |> Expect.equal False,
        test "Dead cell with 3 neighbors revives" <|
            \_ -> isAliveNextTurn False 3 |> Expect.equal True,
        test "Dead cell with 2 neighbors stays dead" <|
            \_ -> isAliveNextTurn False 2 |> Expect.equal False
        ]

grid : Test
grid =
    describe "grid"
        [
        test "something" <|
            \_ -> False |> Expect.equal True
        ]