import 'dart:math' show pow;

import '../../enum/conversion_type.dart';
import '../../enum/illuminance_unit.dart';
import '../../enum/length_unit.dart';
import '../../enum/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

// __lux variations
final _luxVariations = createUnitVariation(
  IlluminanceUnit.values,
  '${variationUnitNameSeperator}lux',
  1,
  decimalPrefixes,
  namePostfix: 'lux',
  symbolPostfix: createSymbol(
    [
      SymbolPart.lux,
    ],
  ),
);

// __phot variations
final _photVariations = createUnitVariation(
  IlluminanceUnit.values,
  '${variationUnitNameSeperator}phot',
  10000,
  decimalPrefixes,
  namePostfix: 'phot',
  symbolPostfix: createSymbol(
    [
      SymbolPart.phot,
    ],
  ),
);

// lumen per square __metre variations
final _lumenPerSquareMetreVariations = createUnitVariation(
  IlluminanceUnit.values,
  'lumenPerSquare${variationUnitNameSeperator}Metre',
  1,
  decimalPrefixes,
  namePrefix: 'lumen per square ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.lumen,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'lumen per square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -2,
);

// other units
final _otherUnits = {
  createUnit(
    'foot-candle',
    createSymbol(
      const [
        SymbolPart.lF,
        SymbolPart.lC,
      ],
    ),
    IlluminanceUnit.footCandle,
    conversionFactor: 10.7639,
  ),
  createUnit(
    'lumen per square foot',
    createSymbol(
      const [
        SymbolPart.lumen,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptTwo,
      ],
    ),
    IlluminanceUnit.lumenPerSquareFoot,
    conversionFactor: pow(
      conversionFactor(
        ConversionType.length,
        LengthUnit.foot,
      ),
      -2,
    ),
  ),
  createUnit(
    'lumen per square inch',
    createSymbol(
      const [
        SymbolPart.lumen,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptTwo,
      ],
    ),
    IlluminanceUnit.lumenPerSquareInch,
    conversionFactor: pow(
      conversionFactor(
        ConversionType.length,
        LengthUnit.inch,
      ),
      -2,
    ),
  ),
  createUnit(
    'nox',
    createSymbol(
      const [
        SymbolPart.nox,
      ],
    ),
    IlluminanceUnit.nox,
    conversionFactor: 0.001,
  ),
};

// illuminance unit details
final illuminanceUnitDetails = {
  ..._luxVariations,
  ..._photVariations,
  ..._lumenPerSquareMetreVariations,
  ..._otherUnits,
};
