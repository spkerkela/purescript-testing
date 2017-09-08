module Main where

import Math(sqrt)
import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
 logShow  (10 / 2)
 logShow  [1,2,4]
 logShow (diagonal 3.0 4.0)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)
