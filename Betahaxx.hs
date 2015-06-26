{-# LANGUAGE TupleSections #-}
module Betahaxx
( bool, ifThenElse, whenM, unlessM, ifThenElseM,
  Map, Set, Seq, Foldable, fold, foldMap,
  Monoid(..), Sum(..), Product(..), (<>),
  splitOn, splitOneOf, splitWhen, chunksOf,
  readMaybe, groupWith, sortWith, the,
  module Haxx
  ) where
-- cabal configure && cabal build && cabal install --user
-- If something bad happens, `ghc-pkg unregister` me, then poke around here:
--   /Users/glacier/Library/Haskell/ghc-7.6.3/lib/???
-- and delete stuff.

-- Complete package reexports:

import Control.Applicative as Haxx
import Control.Arrow       as Haxx
import Control.Exception   as Haxx
import Control.Monad       as Haxx
import Control.Monad.ST    as Haxx
import Data.Bits           as Haxx
import Data.Char           as Haxx
import Data.Either         as Haxx
import Data.Function       as Haxx
import Data.IORef          as Haxx
import Data.List           as Haxx
import Data.Maybe          as Haxx
import Data.Ord            as Haxx
import Data.STRef          as Haxx
import Data.String         as Haxx
import Debug.Trace         as Haxx
import System.IO           as Haxx
import Text.Printf         as Haxx

import Prelude.Unicode.Betahaxx       as Haxx
import Betahaxx.Abbr                  as Haxx
import Data.Function.Betahaxx         as Haxx
import Data.List.Betahaxx             as Haxx
import Data.Map.Betahaxx              as Haxx
import Data.Foldable.Unicode.Betahaxx as Haxx
import Numeric.Betahaxx               as Haxx

-- Selective reexports:

import Control.Bool (bool, ifThenElse, whenM, unlessM, ifThenElseM)
import Data.List.Split (splitOn, splitOneOf, splitWhen, chunksOf)
import Data.Monoid ((<>), Monoid(..), Sum(..), Product(..))
import Data.Map (Map)
import Data.Set (Set)
import Data.Sequence (Seq)
import Data.Foldable (Foldable, fold, foldMap)
import Text.Read (readMaybe)
import GHC.Exts (groupWith, sortWith, the)
-- }}}
