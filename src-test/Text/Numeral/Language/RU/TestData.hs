{-# LANGUAGE NoImplicitPrelude
           , OverloadedStrings
           , PackageImports
           , UnicodeSyntax
  #-}

{-|
[@ISO639-1@]        ru

[@ISO639-2@]        rus

[@ISO639-3@]        rus

[@Native name@]     Русский язык

[@English name@]    Russian
-}

module Text.Numeral.Language.RU.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Data.String ( IsString )
import "base" Prelude     ( Integral )
import "base-unicode-symbols" Prelude.Unicode ( (⋅) )
import "numerals-base" Text.Numeral.Grammar.Reified ( defaultInflection )
import "numerals-base" Text.Numeral.Misc ( dec )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://en.wikibooks.org/wiki/Russian/Numbers
  http://russian.speak7.com/russian_numbers.htm
  http://learningrussian.net/games_verbs_grammar3.php
  http://www.waytorussia.net/WhatIsRussia/Russian/Part1a.html
-}

cardinals ∷ (Integral i, IsString s) ⇒ TestData i s
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "ноль")
      , (1, "один")
      , (2, "два")
      , (3, "три")
      , (4, "четыре")
      , (5, "пять")
      , (6, "шесть")
      , (7, "семь")
      , (8, "восемь")
      , (9, "девять")
      , (10, "десять")
      , (11, "одиннадцать")
      , (12, "двенадцать")
      , (13, "тринадцать")
      , (14, "четырнадцать")
      , (15, "пятнадцать")
      , (16, "шестнадцать")
      , (17, "семнадцать")
      , (18, "восемнадцать")
      , (19, "девятнадцать")
      , (20, "двадцать")
      , (21, "двадцать один")
      , (22, "двадцать два")
      , (23, "двадцать три")
      , (24, "двадцать четыре")
      , (25, "двадцать пять")
      , (26, "двадцать шесть")
      , (27, "двадцать семь")
      , (28, "двадцать восемь")
      , (29, "двадцать девять")
      , (30, "тридцать")
      , (31, "тридцать один")
      , (32, "тридцать два")
      , (33, "тридцать три")
      , (34, "тридцать четыре")
      , (35, "тридцать пять")
      , (36, "тридцать шесть")
      , (37, "тридцать семь")
      , (38, "тридцать восемь")
      , (39, "тридцать девять")
      , (40, "сорок")
      , (41, "сорок один")
      , (42, "сорок два")
      , (43, "сорок три")
      , (44, "сорок четыре")
      , (45, "сорок пять")
      , (46, "сорок шесть")
      , (47, "сорок семь")
      , (48, "сорок восемь")
      , (49, "сорок девять")
      , (50, "пятьдесят")
      , (51, "пятьдесят один")
      , (52, "пятьдесят два")
      , (53, "пятьдесят три")
      , (54, "пятьдесят четыре")
      , (55, "пятьдесят пять")
      , (56, "пятьдесят шесть")
      , (57, "пятьдесят семь")
      , (58, "пятьдесят восемь")
      , (59, "пятьдесят девять")
      , (60, "шестьдесят")
      , (61, "шестьдесят один")
      , (62, "шестьдесят два")
      , (63, "шестьдесят три")
      , (64, "шестьдесят четыре")
      , (65, "шестьдесят пять")
      , (66, "шестьдесят шесть")
      , (67, "шестьдесят семь")
      , (68, "шестьдесят восемь")
      , (69, "шестьдесят девять")
      , (70, "семьдесят")
      , (71, "семьдесят один")
      , (72, "семьдесят два")
      , (73, "семьдесят три")
      , (74, "семьдесят четыре")
      , (75, "семьдесят пять")
      , (76, "семьдесят шесть")
      , (77, "семьдесят семь")
      , (78, "семьдесят восемь")
      , (79, "семьдесят девять")
      , (80, "восемьдесят")
      , (81, "восемьдесят один")
      , (82, "восемьдесят два")
      , (83, "восемьдесят три")
      , (84, "восемьдесят четыре")
      , (85, "восемьдесят пять")
      , (86, "восемьдесят шесть")
      , (87, "восемьдесят семь")
      , (88, "восемьдесят восемь")
      , (89, "восемьдесят девять")
      , (90, "девяносто")
      , (91, "девяносто один")
      , (92, "девяносто два")
      , (93, "девяносто три")
      , (94, "девяносто четыре")
      , (95, "девяносто пять")
      , (96, "девяносто шесть")
      , (97, "девяносто семь")
      , (98, "девяносто восемь")
      , (99, "девяносто девять")
      , (100, "сто")
      , (101, "сто один")
      , (108, "сто восемь")
      , (110, "сто десять")
      , (115, "сто пятнадцать")
      , (121, "сто двадцать один")
      , (133, "сто тридцать три")
      , (147, "сто сорок семь")
      , (200, "двести")
      , (300, "триста")
      , (400, "четыреста")
      , (500, "пятьсот")
      , (600, "шестьсот")
      , (700, "семьсот")
      , (800, "восемьсот")
      , (900, "девятьсот")
      , (1000, "тысяча")
      , (2000, "две тысячи")
      , (3000, "три тысячи")
      , (5000, "пять тысяч")
      , (6000, "шесть тысяч")
      , (9000, "девять тысяч")
      , (16000, "шестнадцать тысяч")
      , (21000, "двадцать одна тысяча")
      , (22000, "двадцать две тысячи")
      , (23000, "двадцать три тысячи")
      , (28000, "двадцать восемь тысяч")
      , (41000, "сорок одна тысяча")
      , (42000, "сорок две тысячи")
      , (49000, "сорок девять тысяч")
      , (100000, "сто тысяч")
      , (200000, "двести тысяч")
      , (300000, "триста тысяч")
      , (300001, "триста тысяч один")
      , (300020, "триста тысяч двадцать")
      , (300825, "триста тысячь восемьсот двадцать пять")
      , (dec 6, "один миллион")
      , (2 ⋅ dec 6, "два миллиона")
      , (5 ⋅ dec 6, "пять миллионов")
      , (dec 9, "один миллиард")
      , (2 ⋅ dec 9, "два миллиарда")
      ]
    )
  ]
