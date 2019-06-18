import 'dart:math' show pow;

import '../../enum/magnetic_flux_unit.dart';
import '../../enum/symbol_part.dart';
import '../../misc/global.dart';
import '../../model/unit.dart';
import '../others/misc.dart';

// __weber variations
final _weberVariations = createUnitVariation(
  MagneticFluxUnit.values,
  MagneticFluxUnit.weber,
  1,
  decimalPrefixes,
  namePostfix: 'weber',
  symbolPostfix: createSymbol(
    [
      SymbolPart.weber,
    ],
  ),
);

// other units
final _otherUnits = {
  Unit<MagneticFluxUnit>(
    'maxwell',
    createSymbol(
      const [
        SymbolPart.maxwell,
      ],
    ),
    MagneticFluxUnit.maxwell,
    pow(10, -8),
  ),
};

// magnetic flux unit details
final magneticFluxUnitDetails = {
  ..._weberVariations,
  ..._otherUnits,
};
