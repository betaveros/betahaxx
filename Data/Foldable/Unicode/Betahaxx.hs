{-|
Module      : Prelude.Betahaxx.Abbr

Unicode synonyms for @Data.Foldable.elem@ and @Data.Foldable.notElem@ that have
RULES specializing to @Data.Set.member@ and @Data.Set.notMember@ (which is
mainly what I want to use this for.) However, with current GHC, we always have
to require Ord for this to work. Ord isn't usually too much to expect anyway.
-}
module Data.Foldable.Unicode.Betahaxx ( (∈), (∋), (∉), (∌) ) where

import Prelude (Ord, Bool, flip)
import Data.Set (member, notMember)
import Data.Foldable (Foldable, elem, notElem)


(∈) :: (Foldable f, Ord a) => a -> f a -> Bool
(∈) = elem
(∋) :: (Foldable f, Ord a) => f a -> a -> Bool
(∋) = flip elem
(∉) :: (Foldable f, Ord a) => a -> f a -> Bool
(∉) = notElem
(∌) :: (Foldable f, Ord a) => f a -> a -> Bool
(∌) = flip notElem
infix 4 ∈, ∋, ∉, ∌
{-# NOINLINE (∈) #-}
{-# NOINLINE (∋) #-}
{-# NOINLINE (∉) #-}
{-# NOINLINE (∌) #-}
{-# RULES "∈/Set" (∈) = member #-}
{-# RULES "∋/Set" (∋) = flip member #-}
{-# RULES "∉/Set" (∉) = notMember #-}
{-# RULES "∌/Set" (∌) = flip notMember #-}
