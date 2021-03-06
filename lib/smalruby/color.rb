# -*- coding: utf-8 -*-

module Smalruby
  # 色を表現するモジュール
  module Color
    # 名前から色のコードへの変換テーブル
    # 参照: http://www.colordic.org/
    NAME_TO_CODE = {
      'black' => [0x00, 0x00, 0x00],
      'dimgray' => [0x69, 0x69, 0x69],
      'gray' => [0x80, 0x80, 0x80],
      'darkgray' => [0xa9, 0xa9, 0xa9],
      'silver' => [0xc0, 0xc0, 0xc0],
      'lightgrey' => [0xd3, 0xd3, 0xd3],
      'gainsboro' => [0xdc, 0xdc, 0xdc],
      'whitesmoke' => [0xf5, 0xf5, 0xf5],
      'white' => [0xff, 0xff, 0xff],
      'snow' => [0xff, 0xfa, 0xfa],
      'ghostwhite' => [0xf8, 0xf8, 0xff],
      'floralwhite' => [0xff, 0xfa, 0xf0],
      'linen' => [0xfa, 0xf0, 0xe6],
      'antiquewhite' => [0xfa, 0xeb, 0xd7],
      'papayawhip' => [0xff, 0xef, 0xd5],
      'blanchedalmond' => [0xff, 0xeb, 0xcd],
      'bisque' => [0xff, 0xe4, 0xc4],
      'moccasin' => [0xff, 0xe4, 0xb5],
      'navajowhite' => [0xff, 0xde, 0xad],
      'peachpuff' => [0xff, 0xda, 0xb9],
      'mistyrose' => [0xff, 0xe4, 0xe1],
      'lavenderblush' => [0xff, 0xf0, 0xf5],
      'seashell' => [0xff, 0xf5, 0xee],
      'oldlace' => [0xfd, 0xf5, 0xe6],
      'ivory' => [0xff, 0xff, 0xf0],
      'honeydew' => [0xf0, 0xff, 0xf0],
      'mintcream' => [0xf5, 0xff, 0xfa],
      'azure' => [0xf0, 0xff, 0xff],
      'aliceblue' => [0xf0, 0xf8, 0xff],
      'lavender' => [0xe6, 0xe6, 0xfa],
      'lightsteelblue' => [0xb0, 0xc4, 0xde],
      'lightslategray' => [0x77, 0x88, 0x99],
      'slategray' => [0x70, 0x80, 0x90],
      'steelblue' => [0x46, 0x82, 0xb4],
      'royalblue' => [0x41, 0x69, 0xe1],
      'midnightblue' => [0x19, 0x19, 0x70],
      'navy' => [0x00, 0x00, 0x80],
      'darkblue' => [0x00, 0x00, 0x8b],
      'mediumblue' => [0x00, 0x00, 0xcd],
      'blue' => [0x00, 0x00, 0xff],
      'dodgerblue' => [0x1e, 0x90, 0xff],
      'cornflowerblue' => [0x64, 0x95, 0xed],
      'deepskyblue' => [0x00, 0xbf, 0xff],
      'lightskyblue' => [0x87, 0xce, 0xfa],
      'skyblue' => [0x87, 0xce, 0xeb],
      'lightblue' => [0xad, 0xd8, 0xe6],
      'powderblue' => [0xb0, 0xe0, 0xe6],
      'paleturquoise' => [0xaf, 0xee, 0xee],
      'lightcyan' => [0xe0, 0xff, 0xff],
      'cyan' => [0x00, 0xff, 0xff],
      'aqua' => [0x00, 0xff, 0xff],
      'turquoise' => [0x40, 0xe0, 0xd0],
      'mediumturquoise' => [0x48, 0xd1, 0xcc],
      'darkturquoise' => [0x00, 0xce, 0xd1],
      'lightseagreen' => [0x20, 0xb2, 0xaa],
      'cadetblue' => [0x5f, 0x9e, 0xa0],
      'darkcyan' => [0x00, 0x8b, 0x8b],
      'teal' => [0x00, 0x80, 0x80],
      'darkslategray' => [0x2f, 0x4f, 0x4f],
      'darkgreen' => [0x00, 0x64, 0x00],
      'green' => [0x00, 0x80, 0x00],
      'forestgreen' => [0x22, 0x8b, 0x22],
      'seagreen' => [0x2e, 0x8b, 0x57],
      'mediumseagreen' => [0x3c, 0xb3, 0x71],
      'mediumaquamarine' => [0x66, 0xcd, 0xaa],
      'darkseagreen' => [0x8f, 0xbc, 0x8f],
      'aquamarine' => [0x7f, 0xff, 0xd4],
      'palegreen' => [0x98, 0xfb, 0x98],
      'lightgreen' => [0x90, 0xee, 0x90],
      'springgreen' => [0x00, 0xff, 0x7f],
      'mediumspringgreen' => [0x00, 0xfa, 0x9a],
      'lawngreen' => [0x7c, 0xfc, 0x00],
      'chartreuse' => [0x7f, 0xff, 0x00],
      'greenyellow' => [0xad, 0xff, 0x2f],
      'lime' => [0x00, 0xff, 0x00],
      'limegreen' => [0x32, 0xcd, 0x32],
      'yellowgreen' => [0x9a, 0xcd, 0x32],
      'darkolivegreen' => [0x55, 0x6b, 0x2f],
      'olivedrab' => [0x6b, 0x8e, 0x23],
      'olive' => [0x80, 0x80, 0x00],
      'darkkhaki' => [0xbd, 0xb7, 0x6b],
      'palegoldenrod' => [0xee, 0xe8, 0xaa],
      'cornsilk' => [0xff, 0xf8, 0xdc],
      'beige' => [0xf5, 0xf5, 0xdc],
      'lightyellow' => [0xff, 0xff, 0xe0],
      'lightgoldenrodyellow' => [0xfa, 0xfa, 0xd2],
      'lemonchiffon' => [0xff, 0xfa, 0xcd],
      'wheat' => [0xf5, 0xde, 0xb3],
      'burlywood' => [0xde, 0xb8, 0x87],
      'tan' => [0xd2, 0xb4, 0x8c],
      'khaki' => [0xf0, 0xe6, 0x8c],
      'yellow' => [0xff, 0xff, 0x00],
      'gold' => [0xff, 0xd7, 0x00],
      'orange' => [0xff, 0xa5, 0x00],
      'sandybrown' => [0xf4, 0xa4, 0x60],
      'darkorange' => [0xff, 0x8c, 0x00],
      'goldenrod' => [0xda, 0xa5, 0x20],
      'peru' => [0xcd, 0x85, 0x3f],
      'darkgoldenrod' => [0xb8, 0x86, 0x0b],
      'chocolate' => [0xd2, 0x69, 0x1e],
      'sienna' => [0xa0, 0x52, 0x2d],
      'saddlebrown' => [0x8b, 0x45, 0x13],
      'maroon' => [0x80, 0x00, 0x00],
      'darkred' => [0x8b, 0x00, 0x00],
      'brown' => [0xa5, 0x2a, 0x2a],
      'firebrick' => [0xb2, 0x22, 0x22],
      'indianred' => [0xcd, 0x5c, 0x5c],
      'rosybrown' => [0xbc, 0x8f, 0x8f],
      'darksalmon' => [0xe9, 0x96, 0x7a],
      'lightcoral' => [0xf0, 0x80, 0x80],
      'salmon' => [0xfa, 0x80, 0x72],
      'lightsalmon' => [0xff, 0xa0, 0x7a],
      'coral' => [0xff, 0x7f, 0x50],
      'tomato' => [0xff, 0x63, 0x47],
      'orangered' => [0xff, 0x45, 0x00],
      'red' => [0xff, 0x00, 0x00],
      'crimson' => [0xdc, 0x14, 0x3c],
      'mediumvioletred' => [0xc7, 0x15, 0x85],
      'deeppink' => [0xff, 0x14, 0x93],
      'hotpink' => [0xff, 0x69, 0xb4],
      'palevioletred' => [0xdb, 0x70, 0x93],
      'pink' => [0xff, 0xc0, 0xcb],
      'lightpink' => [0xff, 0xb6, 0xc1],
      'thistle' => [0xd8, 0xbf, 0xd8],
      'magenta' => [0xff, 0x00, 0xff],
      'fuchsia' => [0xff, 0x00, 0xff],
      'violet' => [0xee, 0x82, 0xee],
      'plum' => [0xdd, 0xa0, 0xdd],
      'orchid' => [0xda, 0x70, 0xd6],
      'mediumorchid' => [0xba, 0x55, 0xd3],
      'darkorchid' => [0x99, 0x32, 0xcc],
      'darkviolet' => [0x94, 0x00, 0xd3],
      'darkmagenta' => [0x8b, 0x00, 0x8b],
      'purple' => [0x80, 0x00, 0x80],
      'indigo' => [0x4b, 0x00, 0x82],
      'darkslateblue' => [0x48, 0x3d, 0x8b],
      'blueviolet' => [0x8a, 0x2b, 0xe2],
      'mediumpurple' => [0x93, 0x70, 0xdb],
      'slateblue' => [0x6a, 0x5a, 0xcd],
      'mediumslateblue' => [0x7b, 0x68, 0xee]
    }

    # 色名の配列
    NAMES = NAME_TO_CODE.keys

    module_function

    # Smalrubyの色名からDXRubyの色コードに変換する
    def smalruby_to_dxruby(color)
      if color.is_a?(String) || color.is_a?(Symbol)
        color = color.to_s.downcase
        if color == 'random'
          [rand(0..0xff), rand(0..0xff), rand(0..0xff)]
        elsif NAME_TO_CODE.key?(color)
          NAME_TO_CODE[color]
        else
          fail "色の指定が間違っています: #{color}"
        end
      else
        color
      end
    end

    # rgb色空間をhsl色空間に変換
    # scratchに合わせるためhは0..200, s lは0..100
    def rgb_to_hsl(r, g, b)
      red   = r / 255.0
      green = g / 255.0
      blue  = b / 255.0
      cmax = [red, green, blue].max
      cmin = [red, green, blue].min
      d = cmax - cmin
      if d == 0
        return [0, 0, (cmax * 100).ceil]
      end
      hue = case cmin
            when blue then 33.0 * ((green - red) / d) + 33
            when red  then 33.0 * ((blue - green) / d) + 100
            else           33.0 * ((red - blue) / d) + 167
            end

      cnt = (cmax - cmin) / 2
      if cnt < 0.5
        saturation = (cmax - cmin) / (cmax + cmin) * 100
      else
        saturation = (cmax - cmin) / (2.0 - cmax - cmin) * 100
      end
      # (cmax + cmin) / 2 * 100
      lightness = (cmax + cmin) * 50

      [hue.ceil, saturation.ceil, lightness.ceil]
    end

    # hsl色空間をrgb色空間に変換
    def hsl_to_rgb(h, s, l)
      cmax = 2.55 * (l + l * (s / 100))
      cmin = 2.55 * (l - l * (s / 100))
      i = h / 33.0
      base = ((i.to_i + 1) / 2).to_i * 66

      if i < 1
        base = h
      elsif i < 2
        base = (h - 66).abs
      elsif i < 4
        base = (h - 132).abs
      else
        base = (200 - h)
      end
      base = base / 60 * (cmax - cmin) + cmin

      red, green, blue = case i.to_i
                         when 0 then  [cmax, base, cmin]
                         when 1 then  [base, cmax, cmin]
                         when 2 then  [cmin, cmax, base]
                         when 3 then  [cmin, base, cmax]
                         when 4 then  [base, cmin, cmax]
                         else         [cmax, cmin, base]
                         end

      [red.ceil, green.ceil, blue.ceil]
    end

    # RGBで表されたSmalrubyの色をx増やす
    # 色は0..200の間で変化
    # 参照: http://wiki.scratch.mit.edu/wiki/Pen_Color_(value)
    # =>   https://ja.wikipedia.org/wiki/HSV色空間
    def change_color(r, g, b, x)
      h, s, l = rgb_to_hsl(r, g, b)
      h = (h + x) % 201
      hsl_to_rgb(h, s, l)
    end

    def set_color(r, g, b, x)
      _, s, l = rgb_to_hsl(r, g, b)
      h = x % 201
      hsl_to_rgb(h, s, l)
    end

    # RGBで表されたSmalrubyの濃さをx増やす
    # 明度は0..100の間で変化
    def change_shade(r, g, b, x)
      h, s, l = rgb_to_hsl(r, g, b)
      l = (l + x) % 101
      hsl_to_rgb(h, s, l)
    end

    def set_shade(r, g, b, x)
      h, s, _ = rgb_to_hsl(r, g, b)
      l = x % 101
      hsl_to_rgb(h, s, l)
    end

  end
end
