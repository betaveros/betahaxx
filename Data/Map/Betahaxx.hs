module Data.Map.Betahaxx ( histogram ) where

import Data.Map (Map, fromListWith)

-- |Histogram: a map from each value to its frequency
histogram :: (Ord k, Num v) => [k] -> Map k v
histogram = fromListWith (+) . map (\x -> (x,1))
