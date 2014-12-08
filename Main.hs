{-# LANGUAGE OverloadedStrings #-}

module Main where

import Language.ECMAScript5.Parser
import Language.ECMAScript5.Syntax
import Data.ByteString
import Data.String
import Prelude hiding (getContents, putStr)

main :: IO ()
main = do src <- getContents
          case parse program "" src of
           Left err -> putStr $ "Error: " `append` (fromString $ show err)
           Right js -> putStr $ fromString $ show js
          
