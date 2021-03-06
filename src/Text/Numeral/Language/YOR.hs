{-# LANGUAGE NoImplicitPrelude
           , OverloadedStrings
           , PackageImports
           , UnicodeSyntax
  #-}

{-|
[@ISO639-1@]        yo

[@ISO639-2@]        yor

[@ISO639-3@]        yor

[@Native name@]     èdè Yorùbá

[@English name@]    Yoruba
-}

module Text.Numeral.Language.YOR
    ( -- * Language entry
      entry
      -- * Conversions
    , cardinal
      -- * Structure
    , struct
      -- * Bounds
    , bounds
    ) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Data.Bool     ( otherwise )
import "base" Data.Function ( ($), const, fix )
import "base" Data.Maybe    ( Maybe(Just) )
import "base" Data.Monoid   ( Monoid )
import "base" Data.String   ( IsString )
import "base" Prelude       ( Integral )
import "base-unicode-symbols" Data.Eq.Unicode       ( (≡) )
import "base-unicode-symbols" Data.Function.Unicode ( (∘) )
import "base-unicode-symbols" Data.Monoid.Unicode   ( (⊕) )
import qualified "containers" Data.Map as M ( fromList, lookup )
import           "numerals-base" Text.Numeral
import qualified "numerals-base" Text.Numeral.Exp as E
import           "numerals-base" Text.Numeral.Grammar ( Inflection )
import "this" Text.Numeral.Entry


--------------------------------------------------------------------------------
-- YOR
--------------------------------------------------------------------------------

{-
TODO: multiple sources make me suspect that this definition is not correct

It may also be the case that numbers have multiple possible deriviations.

 45 = (20*3) - 10 - 5
 50 = (20*3) - 10
108 = (20*6) - 10 - 2
300 = 20 * (20 - 5)
318 = 400 - (20*4) - 2
525 = (200*3) - (20*4) + 5
-}

entry ∷ (Monoid s, IsString s) ⇒ Entry s
entry = emptyEntry
    { entIso639_1    = Just "yo"
    , entIso639_2    = ["yor"]
    , entIso639_3    = Just "yor"
    , entNativeNames = ["èdè Yorùbá"]
    , entEnglishName = Just "Yoruba"
    , entCardinal    = Just Conversion
                       { toNumeral   = cardinal
                       , toStructure = struct
                       }
    }

cardinal ∷ (Inflection i, Integral α, Monoid s, IsString s) ⇒ i → α → Maybe s
cardinal inf = cardinalRepr inf ∘ struct

struct ∷ (Integral α, E.Unknown β, E.Lit β, E.Add β, E.Sub β, E.Mul β) ⇒ α → β
struct = checkPos
       $ fix
       $ conditional (≡ -5) lit
       $ findRule (   1, lit        )
                [ (  11, add 10  L  )
                , (  15, add 20  L  )
                , (  16, sub 20     )
                , (  20, lit        )
                , (  21, add 20  L  )
                , (  25, add 30  L  )
                , (  26, sub 30     )
                , (  30, lit        )
                , (  31, add 30  L  )
                , (  35, sub 40     )
                , (  40, mul 20  L R)
                , (  45, sub 50     )
                , (  50, lit        )
                , (  51, add 50  L  )
                , (  55, sub 60     )
                , (  60, mul 20  L R)
                , (  65, sub 70     )
                , (  70, lit        )
                , (  71, add 70  L  )
                , (  75, sub 80     )
                , (  80, mul 20  L R)
                , (  85, sub 90     )
                , (  90, lit        )
                , (  91, add 90  L  )
                , (  95, sub 100    )
                , ( 100, mul 20  L R)
                , ( 200, mul 100 L R)
                , (1000, lit        )
                ]
                   1000

bounds ∷ (Integral α) ⇒ (α, α)
bounds = (1, 1000)

cardinalRepr ∷ (Monoid s, IsString s) ⇒ i → Exp i → Maybe s
cardinalRepr = render defaultRepr
               { reprValue = \_ n → M.lookup n syms
               , reprAdd   = Just (⊞)
               , reprMul   = Just (⊡)
               , reprSub   = Just $ \_ _ _ → "dil"
               }
    where
      (_     ⊞ Lit 10) _         = ""
      (Lit n ⊞ _) _  | n ≡ -5    = ""
                     | otherwise = "lel"
      (_     ⊞ _) _              = ""

      ((Lit 20 `Mul` Lit 5) ⊡ _) _ = " "
      (_                    ⊡ _) _ = ""

      syms =
          M.fromList
          [ (-5, const "med")
          , ( 1, \c → case c of
                        CtxAdd {} → "mokan"
                        CtxSub {} → "mokan"
                        _         → "ikan"
            )
          , ( 2, twentyForm "me" "go" "ji")
          , ( 3, twentyForm "me" "go" "ta")
          , ( 4, twentyForm "me" "go" "rin")
          , ( 5, twentyForm "ma" "go" "run")
          , ( 6, const    $ "me"  ⊕   "fa")
          , ( 7, const    $ "me"  ⊕   "je")
          , ( 8, const    $ "me"  ⊕   "jo")
          , ( 9, const    $ "me"  ⊕   "san")
          , (10, \c → case c of
                        CtxAdd {} → "la"
                        _         → "mewa"
            )
          , (20, \c → case c of
                        CtxMul {} → "o"
                        _         → "ogun"
            )
          , (30, const "ogbon")
          , (50, const "adota")
          , (70, const "adorin")
          , (90, const "adorun")
          , (1000, const "egberun")
          ]

      twentyForm c m s = \ctx → case ctx of
                                  CtxMul _ (Lit 20) _ → m
                                  _                   → c
                                ⊕ s
