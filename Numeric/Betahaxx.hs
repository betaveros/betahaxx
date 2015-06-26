{-|
module: Numeric.Betahaxx

Numeric utilities.
-}
module Numeric.Betahaxx
( inputInt, inputInteger, inputDouble,
  inputInts, inputIntegers, inputDoubles,
  readBase, readHex, hex
  ) where

import Data.Char (isHexDigit, digitToInt)
import Prelude.Unicode.Betahaxx ( (§) )
import qualified Numeric as N

inputInt :: IO Int
inputInt = read § getLine
inputInteger :: IO Integer
inputInteger = read § getLine
inputDouble :: IO Double
inputDouble = read § getLine

inputRow :: (Read a) => IO [a]
inputRow = map read . words § getLine
inputInts :: IO [Int]
inputInts = inputRow
inputIntegers :: IO [Integer]
inputIntegers = inputRow
inputDoubles :: IO [Double]
inputDoubles = inputRow

readBase :: (Eq a, Ord a, Num a) => a -> String -> a
readBase b s = case N.readInt b charp digitToInt s of
        [(n, "")] -> n
        _ -> error "Numeric.Betahaxx.readBase: unexpected parse result"
    where charp c = isHexDigit c && fromIntegral (digitToInt c) < b
readHex :: (Eq a, Num a) => String -> a
readHex s = case N.readHex s of
    [(n, "")] -> n
    _ -> error "Numeric.Betahaxx.readHex: unexpected parse result"

hex :: (Integral a, Show a) => a -> String
hex = ($ "") . N.showHex
