import '../../enum/symbol_parts.dart';
import 'unicode_constants.dart';

// Convert the [charCode] to String and append [postfix] to it, and returns the result
String _createStringFromUnicode(String charCode) {
  return String.fromCharCodes(Runes('\\u{$charCode}'));
}

final Map<SymbolParts, String> symbol = {
  SymbolParts.ab: 'ab',
  SymbolParts.acre: 'ac',
  SymbolParts.ampere: 'A',
  SymbolParts.angstrom: _createStringFromUnicode(unicodeAngstrom),
  SymbolParts.are: 'a',
  SymbolParts.astronomicalUnit: 'au',
  SymbolParts.atto: 'a',
  SymbolParts.barleycorn: 'bc',
  SymbolParts.barn: 'b',
  SymbolParts.bit: 'bit',
  SymbolParts.byte: 'B',
  SymbolParts.carat: 'ct',
  SymbolParts.centi: 'c',
  SymbolParts.century: 'c',
  SymbolParts.chain: 'chain',
  SymbolParts.chineseMile: 'li',
  SymbolParts.circularMil: 'circular mil',
  SymbolParts.day: 'd',
  SymbolParts.deca: 'da',
  SymbolParts.decade: 'decade',
  SymbolParts.deci: 'd',
  SymbolParts.exa: 'E',
  SymbolParts.farad: 'F',
  SymbolParts.fathom: 'ftm',
  SymbolParts.femto: 'f',
  SymbolParts.fermi: 'fm',
  SymbolParts.foot: 'ft',
  SymbolParts.fortnight: '4tnite',
  SymbolParts.furlong: 'fur',
  SymbolParts.giga: 'G',
  SymbolParts.grain: 'gr',
  SymbolParts.gram: 'g',
  SymbolParts.hand: 'hh',
  SymbolParts.hectare: 'ha',
  SymbolParts.hecto: 'h',
  SymbolParts.hour: 'hr',
  SymbolParts.hundredWeight: 'cwt',
  SymbolParts.inch: 'in',
  SymbolParts.kilo: 'k',
  SymbolParts.league: 'lea',
  SymbolParts.lightDay: 'light-day',
  SymbolParts.lightHour: 'light-hour',
  SymbolParts.lightMinute: 'light-minute',
  SymbolParts.lightSecond: 'light-second',
  SymbolParts.lightYear: 'ly',
  SymbolParts.link: 'li',
  SymbolParts.long: 'long',
  SymbolParts.mega: 'M',
  SymbolParts.meter: 'm',
  SymbolParts.micro: _createStringFromUnicode(unicodeMicro),
  SymbolParts.mile: 'mi',
  SymbolParts.millennium: 'millennium',
  SymbolParts.milli: 'm',
  SymbolParts.minute: 'min',
  SymbolParts.month: 'mo',
  SymbolParts.nano: 'n',
  SymbolParts.nauticalMile: 'nmi',
  SymbolParts.ohm: 'OHM',
  SymbolParts.ounce: 'oz',
  SymbolParts.parsec: 'pc',
  SymbolParts.pennyWeight: 'dwt',
  SymbolParts.peta: 'P',
  SymbolParts.pica: 'pica',
  SymbolParts.pico: 'p',
  SymbolParts.planck: '${_createStringFromUnicode(unicodePlanck)}p',
  SymbolParts.point: 'pt',
  SymbolParts.pole: 'pole',
  SymbolParts.pood: 'pood',
  SymbolParts.pound: 'lb',
  SymbolParts.rai: 'rai',
  SymbolParts.rod: 'rd',
  SymbolParts.rood: 'rood',
  SymbolParts.second: 's',
  SymbolParts.short: 'sh',
  SymbolParts.slug: 'slug',
  SymbolParts.space: ' ',
  SymbolParts.squarePerch: 'square perch',
  SymbolParts.stat: 'stat',
  SymbolParts.stone: 'st',
  SymbolParts.superscriptTwo: _createStringFromUnicode(unicodeSuperscriptTwo),
  SymbolParts.tera: 'T',
  SymbolParts.thousandOfAnInch: 'thou',
  SymbolParts.tonne: 't',
  SymbolParts.tonne_2: 'tn',
  SymbolParts.troy: 't',
  SymbolParts.volt: 'V',
  SymbolParts.week: 'wk',
  SymbolParts.yard: 'yd',
  SymbolParts.year: 'yr',
  SymbolParts.yocto: 'y',
  SymbolParts.yotta: 'Y',
  SymbolParts.zepto: 'z',
  SymbolParts.zetta: 'Z',
};
