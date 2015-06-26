{-|
Module      : Data.Function.Betahaxx

Operators for flipped function application
-}
module Data.Function.Betahaxx ( (&), (&.) ) where

-- |Flipped function application, ripped from Lens
(&) :: a -> (a -> b) -> b
a & b = b a
infixl 1 &
{-# INLINE (&) #-}

-- |Flipped function composition, not ripped from Lens
(&.) :: (a -> b) -> (b -> c) -> a -> c
(&.) = flip (.)
infixl 9 &.
{-# INLINE (&.) #-}
