import '../../enums/symbol_part.dart';
import 'unicode_constant.dart';

/// Convert the `charCode` to `String`.
String stringFromUnicode(String charCode) {
  return String.fromCharCodes(Runes(charCode));
}

/// Symbols for units
final Map<SymbolPart, String> symbol = {
  SymbolPart.ab: 'ab',
  SymbolPart.acre: 'ac',
  SymbolPart.ampere: 'A',
  SymbolPart.angstrom: stringFromUnicode(unicodeAngstrom),
  SymbolPart.are: 'a',
  SymbolPart.astronomicalUnit: 'au',
  SymbolPart.atto: 'a',
  SymbolPart.barleycorn: 'bc',
  SymbolPart.barn: 'b',
  SymbolPart.becquerel: 'Bq',
  SymbolPart.bit: 'bit',
  SymbolPart.boardFoot: 'FBM',
  SymbolPart.britishThermalUnit: 'BTU',
  SymbolPart.bushel: 'bu',
  SymbolPart.byte: 'B',
  SymbolPart.calorie: 'cal',
  SymbolPart.candela: 'cd',
  SymbolPart.carat: 'ct',
  SymbolPart.centi: 'c',
  SymbolPart.century: 'c',
  SymbolPart.chain: 'chain',
  SymbolPart.chineseMile: 'li',
  SymbolPart.clA: 'A',
  SymbolPart.clB: 'B',
  SymbolPart.clC: 'C',
  SymbolPart.clD: 'D',
  SymbolPart.clE: 'E',
  SymbolPart.clF: 'F',
  SymbolPart.clG: 'G',
  SymbolPart.clH: 'H',
  SymbolPart.clI: 'I',
  SymbolPart.clJ: 'J',
  SymbolPart.clK: 'K',
  SymbolPart.clL: 'L',
  SymbolPart.clM: 'M',
  SymbolPart.clN: 'N',
  SymbolPart.clO: 'O',
  SymbolPart.clP: 'P',
  SymbolPart.clQ: 'Q',
  SymbolPart.clR: 'R',
  SymbolPart.clS: 'S',
  SymbolPart.clT: 'T',
  SymbolPart.clU: 'U',
  SymbolPart.clV: 'V',
  SymbolPart.clW: 'W',
  SymbolPart.clX: 'X',
  SymbolPart.clY: 'Y',
  SymbolPart.clZ: 'Z',
  SymbolPart.clark: 'Clark',
  SymbolPart.coulomb: 'C',
  SymbolPart.curie: 'Ci',
  SymbolPart.day: 'd',
  SymbolPart.deca: 'da',
  SymbolPart.decaTherm: 'Dth',
  SymbolPart.decade: 'decade',
  SymbolPart.deci: 'd',
  SymbolPart.doubleQuote: '"',
  SymbolPart.dram: 'dr',
  SymbolPart.dyne: 'dyn',
  SymbolPart.electronVolt: 'eV',
  SymbolPart.exa: 'E',
  SymbolPart.farad: 'F',
  SymbolPart.fathom: 'ftm',
  SymbolPart.femto: 'f',
  SymbolPart.fermi: 'fm',
  SymbolPart.firlot: 'firlot',
  SymbolPart.fluid: 'fl',
  SymbolPart.foot: 'ft',
  SymbolPart.force: 'f',
  SymbolPart.fortnight: '4tnite',
  SymbolPart.forwardSlash: '/',
  SymbolPart.furlong: 'fur',
  SymbolPart.gal: 'Gal',
  SymbolPart.gallon: 'gal',
  SymbolPart.gauss: 'G',
  SymbolPart.giga: 'G',
  SymbolPart.gill: 'gi',
  SymbolPart.grain: 'gr',
  SymbolPart.gram: 'g',
  SymbolPart.gravity: 'g',
  SymbolPart.hand: 'hh',
  SymbolPart.hardness: 'H',
  SymbolPart.hectare: 'ha',
  SymbolPart.hecto: 'h',
  SymbolPart.henry: 'H',
  SymbolPart.hertz: 'Hz',
  SymbolPart.hour: 'hr',
  SymbolPart.hundredWeight: 'cwt',
  SymbolPart.inch: 'in',
  SymbolPart.joule: 'J',
  SymbolPart.kilo: 'k',
  SymbolPart.kip: 'kip',
  SymbolPart.knot: 'kn',
  SymbolPart.lA: 'a',
  SymbolPart.lB: 'b',
  SymbolPart.lC: 'c',
  SymbolPart.lD: 'd',
  SymbolPart.lE: 'e',
  SymbolPart.lF: 'f',
  SymbolPart.lG: 'g',
  SymbolPart.lH: 'h',
  SymbolPart.lI: 'i',
  SymbolPart.lJ: 'j',
  SymbolPart.lK: 'k',
  SymbolPart.lL: 'l',
  SymbolPart.lM: 'm',
  SymbolPart.lN: 'n',
  SymbolPart.lO: 'o',
  SymbolPart.lP: 'p',
  SymbolPart.lQ: 'q',
  SymbolPart.lR: 'r',
  SymbolPart.lS: 's',
  SymbolPart.lT: 't',
  SymbolPart.lU: 'u',
  SymbolPart.lV: 'v',
  SymbolPart.lW: 'w',
  SymbolPart.lX: 'x',
  SymbolPart.lY: 'y',
  SymbolPart.lZ: 'z',
  SymbolPart.lambert: 'L',
  SymbolPart.league: 'lea',
  SymbolPart.lightDay: 'light-day',
  SymbolPart.lightHour: 'light-hour',
  SymbolPart.lightMinute: 'light-minute',
  SymbolPart.lightSecond: 'light-second',
  SymbolPart.lightYear: 'ly',
  SymbolPart.link: 'li',
  SymbolPart.litre: 'L',
  SymbolPart.long: 'long',
  SymbolPart.lumen: 'lm',
  SymbolPart.lux: 'lx',
  SymbolPart.maxwell: 'Mx',
  SymbolPart.mega: 'M',
  SymbolPart.metre: 'm',
  SymbolPart.mho: stringFromUnicode(unicodeMho),
  SymbolPart.micro: stringFromUnicode(unicodeMicro),
  SymbolPart.mile: 'mi',
  SymbolPart.millennium: 'millennium',
  SymbolPart.milli: 'm',
  SymbolPart.minim: 'min',
  SymbolPart.minute: 'min',
  SymbolPart.mole: 'mol',
  SymbolPart.month: 'mo',
  SymbolPart.nOne: '1',
  SymbolPart.nZero: '0',
  SymbolPart.nano: 'n',
  SymbolPart.nauticalMile: 'nmi',
  SymbolPart.newton: 'N',
  SymbolPart.nox: 'nx',
  SymbolPart.oersted: 'Oe',
  SymbolPart.ohm: stringFromUnicode(unicodeOhm),
  SymbolPart.oilBarrel: 'bbl',
  SymbolPart.ounce: 'oz',
  SymbolPart.parsec: 'pc',
  SymbolPart.partPerTenThousand: stringFromUnicode(unicodePartPerTenThousand),
  SymbolPart.partPerThousand: stringFromUnicode(unicodePartPerThousand),
  SymbolPart.pascal: 'Pa',
  SymbolPart.peck: 'peck',
  SymbolPart.pennyWeight: 'dwt',
  SymbolPart.percentage: '%',
  SymbolPart.peta: 'P',
  SymbolPart.phot: 'ph',
  SymbolPart.pica: 'pica',
  SymbolPart.pico: 'p',
  SymbolPart.pint: 'pt',
  SymbolPart.planck: '${stringFromUnicode(unicodePlanck)}p',
  SymbolPart.point: 'pt',
  SymbolPart.poise: 'P',
  SymbolPart.pole: 'pole',
  SymbolPart.pond: 'p',
  SymbolPart.pood: 'pood',
  SymbolPart.pound: 'lb',
  SymbolPart.poundal: 'pdl',
  SymbolPart.quart: 'qt',
  SymbolPart.radian: 'rad',
  SymbolPart.rai: 'rai',
  SymbolPart.revolution: 'r',
  SymbolPart.rod: 'rd',
  SymbolPart.rood: 'rood',
  SymbolPart.rutherford: 'Rd',
  SymbolPart.second: 's',
  SymbolPart.short: 'sh',
  SymbolPart.siemens: 'S',
  SymbolPart.singleQuote: '\'',
  SymbolPart.slug: 'slug',
  SymbolPart.space: ' ',
  SymbolPart.space: ' ',
  SymbolPart.squarePerch: 'square perch',
  SymbolPart.stat: 'stat',
  SymbolPart.stilb: 'sb',
  SymbolPart.stokes: 'St',
  SymbolPart.stone: 'st',
  SymbolPart.subscriptThree: stringFromUnicode(unicodeSubscriptThree),
  SymbolPart.subscriptTwo: stringFromUnicode(unicodeSubscriptTwo),
  SymbolPart.subscriptZero: stringFromUnicode(unicodeSubscriptZero),
  SymbolPart.superscriptPlus: stringFromUnicode(unicodeSuperscriptPlus),
  SymbolPart.superscriptThree: stringFromUnicode(unicodeSuperscriptThree),
  SymbolPart.superscriptTwo: stringFromUnicode(unicodeSuperscriptTwo),
  SymbolPart.superscriptZero: stringFromUnicode(unicodeSuperscriptZero),
  SymbolPart.tablespoon: 'tbsp',
  SymbolPart.tau: stringFromUnicode(unicodeTau),
  SymbolPart.teaspoon: 'tsp',
  SymbolPart.tera: 'T',
  SymbolPart.tesla: 'T',
  SymbolPart.therm: 'thm',
  SymbolPart.thousandOfAnInch: 'thou',
  SymbolPart.tonne: 't',
  SymbolPart.troy: 't',
  SymbolPart.volt: 'V',
  SymbolPart.watt: 'W',
  SymbolPart.weber: 'Wb',
  SymbolPart.week: 'wk',
  SymbolPart.yard: 'yd',
  SymbolPart.year: 'yr',
  SymbolPart.yocto: 'y',
  SymbolPart.yotta: 'Y',
  SymbolPart.zepto: 'z',
  SymbolPart.zetta: 'Z',
};