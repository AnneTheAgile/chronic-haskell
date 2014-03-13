{-# LANGUAGE OverloadedStrings #-}

module Main
    ( main
    ) where

import Parsing.Chronic

import Test.Framework (defaultMain)
import           Test.Framework                     (Test, testGroup)
import           Test.Framework.Providers.HUnit     (testCase)
import           Test.HUnit                         ((@=?))


main :: IO ()
main = defaultMain
    [ initTests
    ]

initTests :: Test
initTests = testGroup "Parsing.Chronic"
    [ testCase "f" $
        True @=? f

    , testCase "g" $
        False @=? g

    ]
