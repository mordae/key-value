-- |
-- Module      :  Data.KeyValue
-- Copyright   :  Jan Hamal Dvořák
-- License     :  MIT
--
-- Maintainer  :  mordae@anilinux.org
-- Stability   :  unstable
-- Portability :  non-portable (ghc)
--

module Data.KeyValue
  ( KeyValue(..)
  )
where
  -- |
  -- A key-value pair.
  --
  class KeyValue kv k v | kv -> k v where
    (.=) :: k -> v -> kv
    infixr 8 .=


  instance KeyValue (a, b) a b where
    k .= v = (k, v)
    {-# INLINE (.=) #-}


-- vim:set ft=haskell sw=2 ts=2 et:
