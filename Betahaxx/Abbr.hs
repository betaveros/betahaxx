{-|
Module      : Betahaxx.Abbr

Illiterate abbreviations for speedy Haskell coding or REPL sessions
-}
module Betahaxx.Abbr ( fI, gLen ) where

import Data.List (genericLength)

-- |Abbreviation for @fromIntegral@
fI :: (Integral a, Num b) => a -> b
fI = fromIntegral
{-# INLINE fI #-}

-- |Abbreviation for @genericLength@
gLen :: (Num b) => [a] -> b
gLen = genericLength
{-# INLINE gLen #-}
