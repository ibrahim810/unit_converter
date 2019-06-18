import '../../enum/blood_glucose_unit.dart';
import '../../enum/symbol_part.dart';
import '../../misc/global.dart';
import '../../model/unit.dart';

// blood gucose unit details
final bloodGlucoseUnitDetails = {
  Unit<BloodGlucoseUnit>(
    'milligram per decilitre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.deci,
        SymbolPart.litre,
      ],
    ),
    BloodGlucoseUnit.milliGramPerDeciLitre,
    1,
    americanName: 'milligram per deciliter',
  ),
  Unit<BloodGlucoseUnit>(
    'millimole per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.mole,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    BloodGlucoseUnit.milliMolePerLitre,
    18.01559,
    americanName: 'millimole per liter',
  ),
};
