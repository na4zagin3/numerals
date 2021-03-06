{-# LANGUAGE NoImplicitPrelude
           , OverloadedStrings
           , PackageImports
           , UnicodeSyntax
  #-}

{-|
[@ISO639-1@]        oj

[@ISO639-2@]        oji

[@ISO639-3@]        oji

[@Native name@]     ᐊᓂᔑᓈᐯᒧᐎᓐ (Anishinaabemowin)

[@English name@]    Ojibwe
-}

module Text.Numeral.Language.OJ.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Data.String ( IsString )
import "base" Prelude     ( Integral )
import "numerals-base" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.sf.airnet.ne.jp/~ts/language/number/ojibwa.html
  http://www.languagesandnumbers.com/how-to-count-in-ojibwa/en/oji/
-}

cardinals ∷ (Integral i, IsString s) ⇒ TestData i s
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "kaagego")
      , (1, "bezhik")
      , (2, "niizh")
      , (3, "nswi")
      , (4, "niiwin")
      , (5, "naanan")
      , (6, "ngodwaaswi")
      , (7, "niizhwaaswi")
      , (8, "nshwaaswi")
      , (9, "zhaangswi")
      , (10, "mdaaswi")
      , (11, "mdaaswi shaa bezhik")
      , (12, "mdaaswi shaa niizh")
      , (13, "mdaaswi shaa nswi")
      , (14, "mdaaswi shaa niiwin")
      , (15, "mdaaswi shaa naanan")
      , (16, "mdaaswi shaa ngodwaaswi")
      , (17, "mdaaswi shaa niizhwaaswi")
      , (18, "mdaaswi shaa nshwaaswi")
      , (19, "mdaaswi shaa zhaangswi")
      , (20, "niizhtaana")
      , (21, "niizhtaana shaa bezhik")
      , (22, "niizhtaana shaa niizh")
      , (23, "niizhtaana shaa nswi")
      , (24, "niizhtaana shaa niiwin")
      , (25, "niizhtaana shaa naanan")
      , (26, "niizhtaana shaa ngodwaaswi")
      , (27, "niizhtaana shaa niizhwaaswi")
      , (28, "niizhtaana shaa nshwaaswi")
      , (29, "niizhtaana shaa zhaangswi")
      , (30, "nsimtaana")
      , (31, "nsimtaana shaa bezhik")
      , (32, "nsimtaana shaa niizh")
      , (33, "nsimtaana shaa nswi")
      , (34, "nsimtaana shaa niiwin")
      , (35, "nsimtaana shaa naanan")
      , (36, "nsimtaana shaa ngodwaaswi")
      , (37, "nsimtaana shaa niizhwaaswi")
      , (38, "nsimtaana shaa nshwaaswi")
      , (39, "nsimtaana shaa zhaangswi")
      , (40, "niimtaana")
      , (41, "niimtaana shaa bezhik")
      , (42, "niimtaana shaa niizh")
      , (43, "niimtaana shaa nswi")
      , (44, "niimtaana shaa niiwin")
      , (45, "niimtaana shaa naanan")
      , (46, "niimtaana shaa ngodwaaswi")
      , (47, "niimtaana shaa niizhwaaswi")
      , (48, "niimtaana shaa nshwaaswi")
      , (49, "niimtaana shaa zhaangswi")
      , (50, "naanmitaana")
      , (51, "naanmitaana shaa bezhik")
      , (52, "naanmitaana shaa niizh")
      , (53, "naanmitaana shaa nswi")
      , (54, "naanmitaana shaa niiwin")
      , (55, "naanmitaana shaa naanan")
      , (56, "naanmitaana shaa ngodwaaswi")
      , (57, "naanmitaana shaa niizhwaaswi")
      , (58, "naanmitaana shaa nshwaaswi")
      , (59, "naanmitaana shaa zhaangswi")
      , (60, "ngodwaasmitaana")
      , (61, "ngodwaasmitaana shaa bezhik")
      , (62, "ngodwaasmitaana shaa niizh")
      , (63, "ngodwaasmitaana shaa nswi")
      , (64, "ngodwaasmitaana shaa niiwin")
      , (65, "ngodwaasmitaana shaa naanan")
      , (66, "ngodwaasmitaana shaa ngodwaaswi")
      , (67, "ngodwaasmitaana shaa niizhwaaswi")
      , (68, "ngodwaasmitaana shaa nshwaaswi")
      , (69, "ngodwaasmitaana shaa zhaangswi")
      , (70, "niizhwaasmitaana")
      , (71, "niizhwaasmitaana shaa bezhik")
      , (72, "niizhwaasmitaana shaa niizh")
      , (73, "niizhwaasmitaana shaa nswi")
      , (74, "niizhwaasmitaana shaa niiwin")
      , (75, "niizhwaasmitaana shaa naanan")
      , (76, "niizhwaasmitaana shaa ngodwaaswi")
      , (77, "niizhwaasmitaana shaa niizhwaaswi")
      , (78, "niizhwaasmitaana shaa nshwaaswi")
      , (79, "niizhwaasmitaana shaa zhaangswi")
      , (80, "nshwaasmitaana")
      , (81, "nshwaasmitaana shaa bezhik")
      , (82, "nshwaasmitaana shaa niizh")
      , (83, "nshwaasmitaana shaa nswi")
      , (84, "nshwaasmitaana shaa niiwin")
      , (85, "nshwaasmitaana shaa naanan")
      , (86, "nshwaasmitaana shaa ngodwaaswi")
      , (87, "nshwaasmitaana shaa niizhwaaswi")
      , (88, "nshwaasmitaana shaa nshwaaswi")
      , (89, "nshwaasmitaana shaa zhaangswi")
      , (90, "zhaangsmitaana")
      , (91, "zhaangsmitaana shaa bezhik")
      , (92, "zhaangsmitaana shaa niizh")
      , (93, "zhaangsmitaana shaa nswi")
      , (94, "zhaangsmitaana shaa niiwin")
      , (95, "zhaangsmitaana shaa naanan")
      , (96, "zhaangsmitaana shaa ngodwaaswi")
      , (97, "zhaangsmitaana shaa niizhwaaswi")
      , (98, "zhaangsmitaana shaa nshwaaswi")
      , (99, "zhaangsmitaana shaa zhaangswi")
      , (100, "ngodwaak")
      , (200, "niizhwaak")
      , (300, "nswaak")
      , (400, "niiwaak")
      , (448, "niiwaak shaa niimtaana shaa nshwaaswi")
      , (500, "naanwaak")
      , (600, "ngodwaaswaak")
      , (700, "niizhwaaswaak")
      , (800, "nshwaaswaak")
      , (900, "zhaangswaak")
      , (1000, "mdaaswaak")
      , (1222, "mdaaswaak shaa niizhwaak shaa niizhtaana shaa niizh")
      ]
    )
  ]
