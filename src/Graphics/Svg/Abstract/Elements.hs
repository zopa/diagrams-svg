{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts  #-}

-------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Svg.Elements
-- Copyright   :  (c) 2015 Jeffrey Rosenbluth
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  jeffrey.rosenbluth@gmail.com
--
-- SVG elements.
--
-------------------------------------------------------------------------------

module Graphics.Svg.Abstract.Elements where

-- import Graphics.Svg.Core
import Graphics.Svg.Attributes
import Data.Text
import Data.HashMap.Strict (HashMap)


type Attributes = HashMap AttrTag [Text]

data Element = El Tag Attributes
  deriving (Show)

data Tag = Svg11 -- svg tag with version 1.1 namespace attributes
         | A
         | AltGlyph -- DEPRECATED AltGlyph "Removed from web standards."
         | AltGlyphDef -- DEPRECATED AltGlyphDef "Removed from web standards."
         | AltGlyphItem -- DEPRECATED AltGlyphItem "Removed from web standards."
         | Animate
         | AnimateColor -- DEPRECATED AnimateColor "Removed from web standards."
         | AnimateMotion
         | AnimateTransform
         | Circle
         | ClipPath
         | ColorProfile
         | Cursor
         | Defs
         | Desc
         | Ellipse
         | FeBlend
         | FeColorMatrix
         | FeComponentTransfer
         | FeComposite
         | FeConvolveMatrix
         | FeDiffuseLighting
         | FeDisplacementMap
         | FeDistantLight
         | FeFlood
         | FeFuncA
         | FeFuncB
         | FeFuncG
         | FeFuncR
         | FeGaussianBlur
         | FeImage
         | FeMerge
         | FeMergeNode
         | FeMorphology
         | FeOffset
         | FePointLight
         | FeSpecularLighting
         | FeSpotLight
         | FeTile
         | FeTurbulence
         | Filter
         | Font
         | FontFace
         | FontFaceFormat
         | FontFaceName
         | FontFaceSrc
         | FontFaceUri
         | ForeignObject
         | G
         | Glyph
         | GlyphRef
         | Hkern
         | Image
         | Line
         | LinearGradient
         | Marker
         | Mask
         | Metadata
         | MissingGlyph
         | Mpath
         | Path
         | Pattern
         | Polygon
         | Polyline
         | RadialGradient
         | Rect
         | Script
         | Set
         | Stop
         | Style
         | Svg
         | Switch
         | Symbol
         | Text Text
         | TextPath
         | Title
         | Tref
         | Tspan
         | Use
         | View
         | Vkern
         deriving (Eq, Show)
