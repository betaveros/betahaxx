{-|
Module      : Data.List.Betahaxx

List utilities.
-}
module Data.List.Betahaxx (autoZipWith, autoZip, spliceOne) where

import Control.Arrow (second)

autoZipWith :: (a -> a -> b) -> [a] -> [b]
autoZipWith f xs = zipWith f xs (drop 1 xs)
{-# INLINE autoZipWith #-}

autoZip :: [a] -> [(a,a)]
autoZip = autoZipWith (,)
{-# INLINE autoZip #-}

spliceOne :: [a] -> [(a, [a])]
spliceOne [] = []
spliceOne (x:xs) = (x, xs) : map (second (x:)) (spliceOne xs)
