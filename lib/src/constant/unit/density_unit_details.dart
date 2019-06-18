import 'dart:math' show pow;

import '../../enum/conversion_type.dart';
import '../../enum/density_unit.dart';
import '../../enum/symbol_part.dart';
import '../../enum/unit_system.dart';
import '../../misc/global.dart';
import '../../model/unit.dart';
import '../../unit_converter.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _perCubicMetreToPerLitre = 0.001;
final _grainToGram = conversionFactor(ConversionType.mass, MassUnit.grain) /
    conversionFactor(ConversionType.mass, MassUnit.gram);
final _ounceToGram = conversionFactor(ConversionType.mass, MassUnit.ounce) /
    conversionFactor(ConversionType.mass, MassUnit.gram);
final _poundToGram = conversionFactor(ConversionType.mass, MassUnit.pound) /
    conversionFactor(ConversionType.mass, MassUnit.gram);
final _slugToGram = conversionFactor(ConversionType.mass, MassUnit.slug) /
    conversionFactor(ConversionType.mass, MassUnit.gram);

// __gram per __litre and per cubic __metre variations
final _gramPerLitreAndPerCubicMetreVariations = <Unit<DensityUnit>>{};

void create(Unit<DensityUnit> unit) {
  var units = createUnitVariation(
    DensityUnit.values,
    unit.type,
    unit.conversionFactor,
    decimalPrefixes,
    namePostfix: unit.name,
    symbolPostfix: unit.symbol,
    addAmericanName: true,
    americanNamePostfix: unit.americanName,
  );
  _gramPerLitreAndPerCubicMetreVariations.addAll(units);
}

// gram per __litre variations
final _intermediateGramPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerLitre,
  1,
  decimalPrefixes,
  namePrefix: 'gram per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram per ',
  americanNamePostfix: 'liter',
).forEach(create);

// gram per cubic __metre variations
final _intermediateGramPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicMetre,
  _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'gram per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
).forEach(create);

// __gram per cubic foot variations
final _gramPerCubicFootVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicFoot,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.cubicFoot,
      ),
  decimalPrefixes,
  namePostfix: 'gram per cubic foot',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.foot,
      SymbolPart.superscriptThree,
    ],
  ),
);

// __gram per cubic inch variations
final _gramPerCubicInchVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicInch,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.cubicInch,
      ),
  decimalPrefixes,
  namePostfix: 'gram per cubic inch',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.inch,
      SymbolPart.superscriptThree,
    ],
  ),
);

// __gram per cubic mile variations
final _gramPerCubicMileVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicMile,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.cubicMile,
      ),
  decimalPrefixes,
  namePostfix: 'gram per cubic mile',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.mile,
      SymbolPart.superscriptThree,
    ],
  ),
);

// __gram per cubic nautical mile variations
final _gramPerCubicNauticalMileVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicNauticalMile,
  _perCubicMetreToPerLitre /
      pow(
        conversionFactor(
          ConversionType.length,
          LengthUnit.nauticalMile,
        ),
        3,
      ),
  decimalPrefixes,
  namePostfix: 'gram per cubic nautical mile',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.nauticalMile,
      SymbolPart.superscriptThree,
    ],
  ),
);

// __gram per cubic yard variations
final _gramPerCubicYardVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerCubicYard,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.cubicYard,
      ),
  decimalPrefixes,
  namePostfix: 'gram per cubic yard',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.yard,
      SymbolPart.superscriptThree,
    ],
  ),
);

// __gram per fluid ounce us variations
final _gramPerFluidOunceVariations_us = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerFluidOunce_us,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.fluidOunce_us,
      ),
  decimalPrefixes,
  namePostfix: 'gram per fluid ounce',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.fluid,
      SymbolPart.space,
      SymbolPart.ounce,
    ],
  ),
  system: UnitSystem.us,
);

// __gram per gallon us liquid variations
final _gramPerGallonVariations_usLiquid = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerGallon_usLiquid,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.gallon_usLiquid,
      ),
  decimalPrefixes,
  namePostfix: 'gram per gallon',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.gallon,
    ],
  ),
  system: UnitSystem.usLiquid,
);

// __gram per quart us liquid variations
final _gramPerQuartVariations_usLiquid = createUnitVariation(
  DensityUnit.values,
  DensityUnit.gramPerQuart_usLiquid,
  _perCubicMetreToPerLitre /
      conversionFactor(
        ConversionType.volume,
        VolumeUnit.quart_usLiquid,
      ),
  decimalPrefixes,
  namePostfix: 'gram per quart',
  symbolPostfix: createSymbol(
    [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.quart,
    ],
  ),
  system: UnitSystem.usLiquid,
);

// grain per __litre variations
final _grainPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.grainPerLitre,
  _grainToGram,
  decimalPrefixes,
  namePrefix: 'grain per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.grain,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'grain per ',
  americanNamePostfix: 'liter',
);

// grain per cubic __metre variations
final _grainPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.grainPerCubicMetre,
  _grainToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'grain per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.grain,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'grain per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

// ounce per __litre variations
final _ouncePerLitreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.ouncePerLitre,
  _ounceToGram,
  decimalPrefixes,
  namePrefix: 'ounce per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.ounce,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'ounc per ',
  americanNamePostfix: 'liter',
);

// ounce per cubic __metre variations
final _ouncePerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.ouncePerCubicMetre,
  _ounceToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'ounce per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.ounce,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'ounce per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

// pound per __litre variations
final _poundPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.poundPerLitre,
  _poundToGram,
  decimalPrefixes,
  namePrefix: 'pound per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.pound,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'pound per ',
  americanNamePostfix: 'liter',
);

// pound per cubic __metre variations
final _poundPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  DensityUnit.poundPerCubicMetre,
  _poundToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'pound per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    [
      SymbolPart.pound,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'pound per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

// other units
final _otherUnits = {
  Unit<DensityUnit>(
    'grain per cubic foot',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicFoot,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicFoot,
        ),
  ),
  Unit<DensityUnit>(
    'grain per cubic inch',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicInch,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicInch,
        ),
  ),
  Unit<DensityUnit>(
    'grain per cubic mile',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicMile,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicMile,
        ),
  ),
  Unit<DensityUnit>(
    'grain per cubic nautical mile',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicNauticalMile,
    (_grainToGram * _perCubicMetreToPerLitre) /
        pow(
          conversionFactor(
            ConversionType.length,
            LengthUnit.nauticalMile,
          ),
          3,
        ),
  ),
  Unit<DensityUnit>(
    'grain per cubic yard',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicYard,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicYard,
        ),
  ),
  Unit<DensityUnit>(
    'grain per fluid ounce',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.grainPerFluidOunce_us,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.fluidOunce_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'grain per gallon',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.grainPerGallon_usLiquid,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.gallon_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'grain per quart',
    createSymbol(
      [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.grainPerQuart_usLiquid,
    (_grainToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.quart_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'gram per cup',
    createSymbol(
      [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_metric,
    _perCubicMetreToPerLitre /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_metric,
        ),
    system: unitSystem[UnitSystem.metric],
  ),
  Unit<DensityUnit>(
    'gram per cup',
    createSymbol(
      [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_us,
    _perCubicMetreToPerLitre /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'gram per cup',
    createSymbol(
      [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_usFoodNutrition,
    _perCubicMetreToPerLitre /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_usFoodNutritionLabel,
        ),
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  Unit<DensityUnit>(
    'ounce per cubic foot',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicFoot,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicFoot,
        ),
  ),
  Unit<DensityUnit>(
    'ounce per cubic inch',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicInch,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicInch,
        ),
  ),
  Unit<DensityUnit>(
    'ounce per cubic mile',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicMile,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicMile,
        ),
  ),
  Unit<DensityUnit>(
    'ounce per cubic nautical mile',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicNauticalMile,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        pow(
          conversionFactor(
            ConversionType.length,
            LengthUnit.nauticalMile,
          ),
          3,
        ),
  ),
  Unit<DensityUnit>(
    'ounce per cubic yard',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicYard,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicYard,
        ),
  ),
  Unit<DensityUnit>(
    'ounce per fluid ounce',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.ouncePerFluidOunce_us,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.fluidOunce_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'ounce per gallon',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.ouncePerGallon_usLiquid,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.gallon_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'ounce per quart',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.ouncePerQuart_usLiquid,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.quart_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'ounce per cup',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_metric,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_metric,
        ),
    system: unitSystem[UnitSystem.metric],
  ),
  Unit<DensityUnit>(
    'ounce per cup',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_us,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'ounce per cup',
    createSymbol(
      [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_usFoodNutrition,
    (_ounceToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_usFoodNutritionLabel,
        ),
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  Unit<DensityUnit>(
    'pound per cubic foot',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicFoot,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicFoot,
        ),
  ),
  Unit<DensityUnit>(
    'pound per cubic inch',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicInch,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicInch,
        ),
  ),
  Unit<DensityUnit>(
    'pound per cubic mile',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicMile,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicMile,
        ),
  ),
  Unit<DensityUnit>(
    'pound per cubic nautical mile',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicNauticalMile,
    (_poundToGram * _perCubicMetreToPerLitre) /
        pow(
          conversionFactor(
            ConversionType.length,
            LengthUnit.nauticalMile,
          ),
          3,
        ),
  ),
  Unit<DensityUnit>(
    'pound per cubic yard',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicYard,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicYard,
        ),
  ),
  Unit<DensityUnit>(
    'pound per fluid ounce',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.poundPerFluidOunce_us,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.fluidOunce_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'pound per gallon',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.poundPerGallon_usLiquid,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.gallon_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'pound per quart',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.poundPerQuart_usLiquid,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.quart_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'pound per cup',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_metric,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_metric,
        ),
    system: unitSystem[UnitSystem.metric],
  ),
  Unit<DensityUnit>(
    'pound per cup',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_us,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'pound per cup',
    createSymbol(
      [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_usFoodNutrition,
    (_poundToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cup_usFoodNutritionLabel,
        ),
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  Unit<DensityUnit>(
    'slug per cubic foot',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicFoot,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicFoot,
        ),
  ),
  Unit<DensityUnit>(
    'slug per cubic inch',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicInch,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicInch,
        ),
  ),
  Unit<DensityUnit>(
    'slug per cubic mile',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicMile,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicMile,
        ),
  ),
  Unit<DensityUnit>(
    'slug per cubic nautical mile',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicNauticalMile,
    (_slugToGram * _perCubicMetreToPerLitre) /
        pow(
          conversionFactor(
            ConversionType.length,
            LengthUnit.nauticalMile,
          ),
          3,
        ),
  ),
  Unit<DensityUnit>(
    'slug per cubic yard',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicYard,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.cubicYard,
        ),
  ),
  Unit<DensityUnit>(
    'slug per fluid ounce',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.slugPerFluidOunce_us,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.fluidOunce_us,
        ),
    system: unitSystem[UnitSystem.us],
  ),
  Unit<DensityUnit>(
    'slug per gallon',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.slugPerGallon_usLiquid,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.gallon_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  Unit<DensityUnit>(
    'slug per quart',
    createSymbol(
      [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.slugPerQuart_usLiquid,
    (_slugToGram * _perCubicMetreToPerLitre) /
        conversionFactor(
          ConversionType.volume,
          VolumeUnit.quart_usLiquid,
        ),
    system: unitSystem[UnitSystem.usLiquid],
  ),
};

// density unit details
final densityUnitDetails = {
  ..._gramPerLitreAndPerCubicMetreVariations,
  ..._gramPerCubicFootVariations,
  ..._gramPerCubicInchVariations,
  ..._gramPerCubicMileVariations,
  ..._gramPerCubicNauticalMileVariations,
  ..._gramPerCubicYardVariations,
  ..._gramPerFluidOunceVariations_us,
  ..._gramPerGallonVariations_usLiquid,
  ..._gramPerQuartVariations_usLiquid,
  ..._grainPerLitreVariations,
  ..._grainPerCubicMetreVariations,
  ..._ouncePerLitreVariations,
  ..._ouncePerCubicMetreVariations,
  ..._poundPerLitreVariations,
  ..._poundPerCubicMetreVariations,
  ..._otherUnits,
};
