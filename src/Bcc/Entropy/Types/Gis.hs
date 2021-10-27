{-# LANGUAGE DeriveGeneric #-}

module Bcc.Entropy.Types.Gis
  ( GisOptions(..)
  ) where

import Data.Time    (UTCTime)
import GHC.Generics (Generic)

data GisOptions = GisOptions
  { workspace :: FilePath
  , endTime   :: UTCTime
  , numHours  :: Int
  } deriving (Eq, Generic, Show)
