import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/src/css_parser.dart';

//Export Style value-unit APIs
export 'package:flutter_html/src/style/margin.dart';
export 'package:flutter_html/src/style/length.dart';
export 'package:flutter_html/src/style/size.dart';
export 'package:flutter_html/src/style/fontsize.dart';
export 'package:flutter_html/src/style/lineheight.dart';

///This class represents all the available CSS attributes
///for this package.
class Style {
  /// CSS attribute "`background-color`"
  ///
  /// Inherited: no,
  /// Default: Colors.transparent,
  Color? backgroundColor;

  /// CSS attribute "`color`"
  ///
  /// Inherited: yes,
  /// Default: unspecified,
  Color? color;

  /// CSS attribute "`direction`"
  ///
  /// Inherited: yes,
  /// Default: TextDirection.ltr,
  TextDirection? direction;

  /// CSS attribute "`display`"
  ///
  /// Inherited: no,
  /// Default: unspecified,
  Display? display;

  /// CSS attribute "`font-family`"
  ///
  /// Inherited: yes,
  /// Default: Theme.of(context).style.textTheme.body1.fontFamily
  String? fontFamily;

  /// The list of font families to fall back on when a glyph cannot be found in default font family.
  ///
  /// Inherited: yes,
  /// Default: null
  List<String>? fontFamilyFallback;

  /// CSS attribute "`font-feature-settings`"
  ///
  /// Inherited: yes,
  /// Default: normal
  List<FontFeature>? fontFeatureSettings;

  /// CSS attribute "`font-size`"
  ///
  /// Inherited: yes,
  /// Default: FontSize.medium
  FontSize? fontSize;

  /// CSS attribute "`font-style`"
  ///
  /// Inherited: yes,
  /// Default: FontStyle.normal,
  FontStyle? fontStyle;

  /// CSS attribute "`font-weight`"
  ///
  /// Inherited: yes,
  /// Default: FontWeight.normal,
  FontWeight? fontWeight;

  /// CSS attribute "`height`"
  ///
  /// Inherited: no,
  /// Default: Height.auto(),
  Height? height;

  /// CSS attribute "`letter-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0),
  double? letterSpacing;

  /// CSS attribute "`list-style-type`"
  ///
  /// Inherited: yes,
  /// Default: ListStyleType.DISC
  ListStyleType? listStyleType;

  /// CSS attribute "`list-style-position`"
  ///
  /// Inherited: yes,
  /// Default: ListStylePosition.OUTSIDE
  ListStylePosition? listStylePosition;

  /// CSS attribute "`padding`"
  ///
  /// Inherited: no,
  /// Default: EdgeInsets.zero
  EdgeInsets? padding;

  /// CSS attribute "`margin`"
  ///
  /// Inherited: no,
  /// Default: EdgeInsets.zero
  Margins? margin;

  /// CSS attribute "`text-align`"
  ///
  /// Inherited: yes,
  /// Default: TextAlign.start,
  TextAlign? textAlign;

  /// CSS attribute "`text-decoration`"
  ///
  /// Inherited: no,
  /// Default: TextDecoration.none,
  TextDecoration? textDecoration;

  /// CSS attribute "`text-decoration-color`"
  ///
  /// Inherited: no,
  /// Default: Current color
  Color? textDecorationColor;

  /// CSS attribute "`text-decoration-style`"
  ///
  /// Inherited: no,
  /// Default: TextDecorationStyle.solid,
  TextDecorationStyle? textDecorationStyle;

  /// Loosely based on CSS attribute "`text-decoration-thickness`"
  ///
  /// Uses a percent modifier based on the font size.
  ///
  /// Inherited: no,
  /// Default: 1.0 (specified by font size)
  // TODO(Sub6Resources): Possibly base this more closely on the CSS attribute.
  double? textDecorationThickness;

  /// CSS attribute "`text-shadow`"
  ///
  /// Inherited: yes,
  /// Default: none,
  List<Shadow>? textShadow;

  /// CSS attribute "`vertical-align`"
  ///
  /// Inherited: no,
  /// Default: VerticalAlign.BASELINE,
  VerticalAlign? verticalAlign;

  /// CSS attribute "`white-space`"
  ///
  /// Inherited: yes,
  /// Default: WhiteSpace.NORMAL,
  WhiteSpace? whiteSpace;

  /// CSS attribute "`width`"
  ///
  /// Inherited: no,
  /// Default: Width.auto()
  Width? width;

  /// CSS attribute "`word-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0)
  double? wordSpacing;

  /// CSS attribute "`line-height`"
  ///
  /// Supported values: double values
  ///
  /// Unsupported values: normal, 80%, ..
  ///
  /// Inherited: no,
  /// Default: Unspecified (null),
  LineHeight? lineHeight;

  //TODO modify these to match CSS styles
  String? before;
  String? after;
  Border? border;
  Alignment? alignment;
  Widget? markerContent;

  /// MaxLine
  ///
  ///
  ///
  ///
  int? maxLines;

  /// TextOverflow
  ///
  ///
  ///
  ///
  TextOverflow? textOverflow;

  TextTransform? textTransform;

  Style({
    this.backgroundColor = Colors.transparent,
    this.color,
    this.direction,
    this.display,
    this.fontFamily,
    this.fontFamilyFallback,
    this.fontFeatureSettings,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.height,
    this.lineHeight,
    this.letterSpacing,
    this.listStyleType,
    this.listStylePosition,
    this.padding,
    this.margin,
    this.textAlign,
    this.textDecoration,
    this.textDecorationColor,
    this.textDecorationStyle,
    this.textDecorationThickness,
    this.textShadow,
    this.verticalAlign,
    this.whiteSpace,
    this.width,
    this.wordSpacing,
    this.before,
    this.after,
    this.border,
    this.alignment,
    this.markerContent,
    this.maxLines,
    this.textOverflow,
    this.textTransform = TextTransform.none,
  }) {
    if (alignment == null &&
        (display == Display.block || display == Display.listItem)) {
      alignment = Alignment.centerLeft;
    }
  }

  static Map<String, Style> fromThemeData(ThemeData theme) => {
        'h1': Style.fromTextStyle(theme.textTheme.headlineLarge!),
        'h2': Style.fromTextStyle(theme.textTheme.headlineLarge!),
        'h3': Style.fromTextStyle(theme.textTheme.headlineMedium!),
        'h4': Style.fromTextStyle(theme.textTheme.headlineMedium!),
        'h5': Style.fromTextStyle(theme.textTheme.headlineSmall!),
        'h6': Style.fromTextStyle(theme.textTheme.headlineSmall!),
        'body': Style.fromTextStyle(theme.textTheme.bodyMedium!),
      };

  static Map<String, Style> fromCss(
      String css, OnCssParseError? onCssParseError) {
    final declarations = parseExternalCss(css, onCssParseError);
    Map<String, Style> styleMap = {};
    declarations.forEach((key, value) {
      styleMap[key] = declarationsToStyle(value);
    });
    return styleMap;
  }

  TextStyle generateTextStyle() {
    return TextStyle(
      backgroundColor: backgroundColor,
      color: color,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      decorationStyle: textDecorationStyle,
      decorationThickness: textDecorationThickness,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontFeatures: fontFeatureSettings,
      fontSize: fontSize?.value,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      shadows: textShadow,
      wordSpacing: wordSpacing,
      height: lineHeight?.size ?? 1.0,
      //TODO background
      //TODO textBaseline
    );
  }

  @override
  String toString() {
    return "Style";
  }

  Style merge(Style other) {
    return copyWith(
      backgroundColor: other.backgroundColor,
      color: other.color,
      direction: other.direction,
      display: other.display,
      fontFamily: other.fontFamily,
      fontFamilyFallback: other.fontFamilyFallback,
      fontFeatureSettings: other.fontFeatureSettings,
      fontSize: other.fontSize,
      fontStyle: other.fontStyle,
      fontWeight: other.fontWeight,
      height: other.height,
      lineHeight: other.lineHeight,
      letterSpacing: other.letterSpacing,
      listStyleType: other.listStyleType,
      listStylePosition: other.listStylePosition,
      padding: other.padding,
      //TODO merge EdgeInsets
      margin: other.margin,
      //TODO merge Margins
      textAlign: other.textAlign,
      textDecoration: other.textDecoration,
      textDecorationColor: other.textDecorationColor,
      textDecorationStyle: other.textDecorationStyle,
      textDecorationThickness: other.textDecorationThickness,
      textShadow: other.textShadow,
      verticalAlign: other.verticalAlign,
      whiteSpace: other.whiteSpace,
      width: other.width,
      wordSpacing: other.wordSpacing,

      before: other.before,
      after: other.after,
      border: other.border,
      //TODO merge border
      alignment: other.alignment,
      markerContent: other.markerContent,
      maxLines: other.maxLines,
      textOverflow: other.textOverflow,
      textTransform: other.textTransform,
    );
  }

  Style copyOnlyInherited(Style child) {
    FontSize? finalFontSize = FontSize.inherit(fontSize, child.fontSize);

    LineHeight? finalLineHeight = child.lineHeight != null
        ? child.lineHeight?.units == "length"
            ? LineHeight(child.lineHeight!.size! /
                (finalFontSize == null ? 14 : finalFontSize.value) *
                1.2)
            : child.lineHeight
        : lineHeight;

    return child.copyWith(
      backgroundColor: child.backgroundColor != Colors.transparent
          ? child.backgroundColor
          : backgroundColor,
      color: child.color ?? color,
      direction: child.direction ?? direction,
      display: display == Display.none ? display : child.display,
      fontFamily: child.fontFamily ?? fontFamily,
      fontFamilyFallback: child.fontFamilyFallback ?? fontFamilyFallback,
      fontFeatureSettings: child.fontFeatureSettings ?? fontFeatureSettings,
      fontSize: finalFontSize,
      fontStyle: child.fontStyle ?? fontStyle,
      fontWeight: child.fontWeight ?? fontWeight,
      lineHeight: finalLineHeight,
      letterSpacing: child.letterSpacing ?? letterSpacing,
      listStyleType: child.listStyleType ?? listStyleType,
      listStylePosition: child.listStylePosition ?? listStylePosition,
      textAlign: child.textAlign ?? textAlign,
      textDecoration: TextDecoration.combine([
        child.textDecoration ?? TextDecoration.none,
        textDecoration ?? TextDecoration.none,
      ]),
      textShadow: child.textShadow ?? textShadow,
      whiteSpace: child.whiteSpace ?? whiteSpace,
      wordSpacing: child.wordSpacing ?? wordSpacing,
      maxLines: child.maxLines ?? maxLines,
      textOverflow: child.textOverflow ?? textOverflow,
      textTransform: child.textTransform ?? textTransform,
    );
  }

  Style copyWith({
    Color? backgroundColor,
    Color? color,
    TextDirection? direction,
    Display? display,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    List<FontFeature>? fontFeatureSettings,
    FontSize? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    Height? height,
    LineHeight? lineHeight,
    double? letterSpacing,
    ListStyleType? listStyleType,
    ListStylePosition? listStylePosition,
    EdgeInsets? padding,
    Margins? margin,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextDecorationStyle? textDecorationStyle,
    double? textDecorationThickness,
    List<Shadow>? textShadow,
    VerticalAlign? verticalAlign,
    WhiteSpace? whiteSpace,
    Width? width,
    double? wordSpacing,
    String? before,
    String? after,
    Border? border,
    Alignment? alignment,
    Widget? markerContent,
    int? maxLines,
    TextOverflow? textOverflow,
    TextTransform? textTransform,
    bool? beforeAfterNull,
  }) {
    return Style(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
      direction: direction ?? this.direction,
      display: display ?? this.display,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontFeatureSettings: fontFeatureSettings ?? this.fontFeatureSettings,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      height: height ?? this.height,
      lineHeight: lineHeight ?? this.lineHeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      listStyleType: listStyleType ?? this.listStyleType,
      listStylePosition: listStylePosition ?? this.listStylePosition,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textDecorationColor: textDecorationColor ?? this.textDecorationColor,
      textDecorationStyle: textDecorationStyle ?? this.textDecorationStyle,
      textDecorationThickness:
          textDecorationThickness ?? this.textDecorationThickness,
      textShadow: textShadow ?? this.textShadow,
      verticalAlign: verticalAlign ?? this.verticalAlign,
      whiteSpace: whiteSpace ?? this.whiteSpace,
      width: width ?? this.width,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      before: beforeAfterNull == true ? null : before ?? this.before,
      after: beforeAfterNull == true ? null : after ?? this.after,
      border: border ?? this.border,
      alignment: alignment ?? this.alignment,
      markerContent: markerContent ?? this.markerContent,
      maxLines: maxLines ?? this.maxLines,
      textOverflow: textOverflow ?? this.textOverflow,
      textTransform: textTransform ?? this.textTransform,
    );
  }

  Style.fromTextStyle(TextStyle textStyle) {
    backgroundColor = textStyle.backgroundColor;
    color = textStyle.color;
    textDecoration = textStyle.decoration;
    textDecorationColor = textStyle.decorationColor;
    textDecorationStyle = textStyle.decorationStyle;
    textDecorationThickness = textStyle.decorationThickness;
    fontFamily = textStyle.fontFamily;
    fontFamilyFallback = textStyle.fontFamilyFallback;
    fontFeatureSettings = textStyle.fontFeatures;
    fontSize =
        textStyle.fontSize != null ? FontSize(textStyle.fontSize!) : null;
    fontStyle = textStyle.fontStyle;
    fontWeight = textStyle.fontWeight;
    letterSpacing = textStyle.letterSpacing;
    textShadow = textStyle.shadows;
    wordSpacing = textStyle.wordSpacing;
    lineHeight = LineHeight(textStyle.height ?? 1.2);
    textTransform = TextTransform.none;
  }

  /// Sets any dimensions set to rem or em to the computed size
  void setRelativeValues(double remValue, double emValue) {
    if (width?.unit == Unit.rem) {
      width = Width(width!.value * remValue);
    } else if (width?.unit == Unit.em) {
      width = Width(width!.value * emValue);
    }

    if (height?.unit == Unit.rem) {
      height = Height(height!.value * remValue);
    } else if (height?.unit == Unit.em) {
      height = Height(height!.value * emValue);
    }

    if (fontSize?.unit == Unit.rem) {
      fontSize = FontSize(fontSize!.value * remValue);
    } else if (fontSize?.unit == Unit.em) {
      fontSize = FontSize(fontSize!.value * emValue);
    }

    Margin? marginLeft;
    Margin? marginTop;
    Margin? marginRight;
    Margin? marginBottom;

    if (margin?.left?.unit == Unit.rem) {
      marginLeft = Margin(margin!.left!.value * remValue);
    } else if (margin?.left?.unit == Unit.em) {
      marginLeft = Margin(margin!.left!.value * emValue);
    }

    if (margin?.top?.unit == Unit.rem) {
      marginTop = Margin(margin!.top!.value * remValue);
    } else if (margin?.top?.unit == Unit.em) {
      marginTop = Margin(margin!.top!.value * emValue);
    }

    if (margin?.right?.unit == Unit.rem) {
      marginRight = Margin(margin!.right!.value * remValue);
    } else if (margin?.right?.unit == Unit.em) {
      marginRight = Margin(margin!.right!.value * emValue);
    }

    if (margin?.bottom?.unit == Unit.rem) {
      marginBottom = Margin(margin!.bottom!.value * remValue);
    } else if (margin?.bottom?.unit == Unit.em) {
      marginBottom = Margin(margin!.bottom!.value * emValue);
    }

    margin = margin?.copyWith(
      left: marginLeft,
      top: marginTop,
      right: marginRight,
      bottom: marginBottom,
    );
  }
}

enum Display {
  block,
  inline,
  inlineBlock,
  listItem,
  none,
}

class ListStyleType {
  final String text;
  final String type;
  final Widget? widget;

  const ListStyleType(this.text, {this.type = "marker", this.widget});

  factory ListStyleType.fromImage(String url) =>
      ListStyleType(url, type: "image");

  factory ListStyleType.fromWidget(Widget widget) =>
      ListStyleType("", widget: widget, type: "widget");

  static const lowerAlpha = ListStyleType("LOWER_ALPHA");
  static const upperAlpha = ListStyleType("UPPER_ALPHA");
  static const lowerLatin = ListStyleType("LOWER_LATIN");
  static const upperLatin = ListStyleType("UPPER_LATIN");
  static const circle = ListStyleType("CIRCLE");
  static const disc = ListStyleType("DISC");
  static const decimal = ListStyleType("DECIMAL");
  static const lowerRoman = ListStyleType("LOWER_ROMAN");
  static const upperRoman = ListStyleType("UPPER_ROMAN");
  static const square = ListStyleType("SQUARE");
  static const none = ListStyleType("NONE");
}

enum ListStylePosition {
  outside,
  inside,
}

enum TextTransform {
  uppercase,
  lowercase,
  capitalize,
  none,
}

enum VerticalAlign {
  baseline,
  sub,
  sup,
}

enum WhiteSpace {
  normal,
  pre,
}
