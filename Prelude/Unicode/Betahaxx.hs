{-|
Module      : Prelude.Betahaxx.Unicode

Re-export some basic base-unicode-symbols and add two of my own.
-}
module Prelude.Unicode.Betahaxx ( (≡), (≢), (≠), (≤), (≥), π, (⋅), ℤ, ℚ, (×), (§) ) where

import Prelude.Unicode ((≡), (≢), (≠), (≤), (≥), π, (⋅), ℤ, ℚ)

-- |Multiplication sign for multiplication.
-- I still think it's more readable and nicer than asterisk or center dot.
-- Although mathematically this is usually cross product or something
-- more complicated, so I'm not going to try to get it into some big library.
(×) :: Num a => a -> a -> a
(×) = (*)
infixl 7 ×
{-# INLINE (×) #-}

-- |(§) = @fmap@
--
-- U+00A7, SECTION SYMBOL
(§) :: Functor f => (a -> b) -> f a -> f b
(§) = fmap
infixl 4 §
{-# INLINE (§) #-}
