{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE CPP #-}

{-| This module is for internal re-exports of commonly-used
  functions. This also lets us avoid churn between versions of GHC by
  putting changed functions behind CPP in a single place.
-}

module Prelude.MH
( module P
#if !MIN_VERSION_base(4,11,0)
, (<>)
#endif
, (<|>)
-- commonly-used functions from Maybe
, Maybe.isJust
, Maybe.isNothing
, Maybe.listToMaybe
, Maybe.maybeToList
, Maybe.fromMaybe
, Maybe.catMaybes
-- a non-partial Read function
, Read.readMaybe
-- commonly-used functions from Monad
, Monad.forM
, Monad.forM_
, Monad.filterM
, Monad.when
, Monad.unless
, Monad.void
, Monad.join
, Monad.forever
, Monad.foldM
, Monad.MonadIO(..)
-- commonly-used functions from List
, List.find
, List.sort
, List.intercalate
, Exts.sortWith
, Exts.groupWith
) where


#if !MIN_VERSION_base(4,11,0)
import           Data.Semigroup ((<>))
#endif
import qualified Prelude.Compat as P
import           Prelude.Compat
import           Control.Applicative ((<|>))
import qualified Control.Monad as Monad
import qualified Control.Monad.IO.Class as Monad
import qualified Data.List as List
import qualified Data.Maybe as Maybe
import qualified GHC.Exts as Exts
import qualified Text.Read as Read
