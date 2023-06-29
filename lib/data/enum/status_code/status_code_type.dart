import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

@JsonEnum(valueField: 'code')
enum StatusCodeType implements Translatable {
  // success
  s200(200),
  s201(201),
  s202(202),
  // client errors
  s400(400),
  s401(401),
  s403(403),
  s404(404),
  s405(405),
  s406(406),
  s408(408),
  s409(409),
  s412(412),
  // server errors
  s500(500),
  s501(501),
  s502(502),
  s503(503),
  s504(504),
  s999(999),
  // custom errors
  s601(601),
  s602(602),
  s603(603),
  s604(604),
  s605(605),
  s606(606),
  s607(607),
  s608(608),
  s609(609),
  s610(610),
  s611(611),
  s612(612),
  s613(613),
  s614(614),
  s615(615),
  s616(616),
  s617(617),
  s618(618),
  s619(619),
  s620(620),
  s621(621),
  s622(622),
  s623(623),
  s624(624),
  s625(625),
  s626(626),
  s627(627),
  s628(628),
  s629(629),
  s630(630),
  s631(631),
  s632(632),
  s633(633),
  s634(634),
  s635(635),
  s636(636),
  s637(637),
  s638(638),
  s639(639),
  s640(640),
  s641(641),
  s642(642),
  s643(643),
  s644(644),
  s645(645),
  s646(646),
  s647(647),
  s648(648),
  s649(649),
  s650(650),
  s651(651),
  s652(652),
  s653(653),
  s654(654),
  s655(655),
  s656(656),
  s657(657),
  s658(658),
  s659(659),
  s660(660),
  s661(661),
  s662(662),
  s663(663),
  s664(664),
  s665(665),
  s666(666),
  s667(667),
  s668(668),
  s669(669),
  s670(670),
  s671(671),
  s672(672),
  s673(673),
  s674(674),
  s675(675),
  s676(676),
  s677(677),
  s678(678),
  s679(679),
  s688(688),
  s689(689),
  s690(690),
  s691(691),
  s692(692),
  s693(693),
  s694(694),
  s695(695),
  s696(696),
  s697(697),
  s698(698),
  s699(699),
  s700(700),
  s701(701),
  s702(702),
  s703(703),
  s704(704),
  s705(705),
  s706(706),
  s707(707),
  s708(708),
  s709(709),
  s710(710),
  s711(711),
  s712(712),
  s713(713),
  s714(714),
  s715(715),
  s716(716),
  s717(717),
  s718(718),
  s719(719),
  s720(720),
  s721(721),
  s723(723),
  s724(724),
  s725(725),
  s726(726),
  s727(727),
  s728(728),
  s729(729),
  s730(730),
  s731(731),
  s732(732),
  s733(733),
  s734(734),
  s735(735),
  s736(736),
  s737(737),
  s741(741),
  s742(742),
  s743(743),
  s744(744),
  s745(745),
  s746(746),
  s747(747),
  s748(748),
  s749(749),
  s750(750),
  s751(751),
  s752(752),
  s753(753),
  s754(754),
  s755(755),
  s756(756),
  s758(758),
  s759(759),
  s760(760),
  s761(761),
  s763(763),
  s764(764),
  s765(765),
  s766(766),
  s767(767),
  s768(768),
  s769(769),
  s770(770),

  //Errores para usuario
  s780(780),

  //Errores para el cambio de nombre
  s680(680),
  s681(681),
  s682(682),
  s683(683),
  s684(684),
  s685(685),
  s686(686),
  s687(687),
  s740(740),
  s762(762),

  //Errores para el duplicado de cédula
  s722(722),
  s738(738),
  s739(739),
  s757(757);


  const StatusCodeType(this.code);
  final int code;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    final translations = {
      StatusCodeType.s200: l10n.s200,
      StatusCodeType.s201: l10n.s201,
      StatusCodeType.s202: l10n.s202,
      StatusCodeType.s400: l10n.s400,
      StatusCodeType.s401: l10n.s401,
      StatusCodeType.s403: l10n.s403,
      StatusCodeType.s404: l10n.s404,
      StatusCodeType.s405: l10n.s405,
      StatusCodeType.s406: l10n.s406,
      StatusCodeType.s408: l10n.s408,
      StatusCodeType.s409: l10n.s409,
      StatusCodeType.s412: l10n.s412,
      StatusCodeType.s500: l10n.s500,
      StatusCodeType.s501: l10n.s501,
      StatusCodeType.s502: l10n.s502,
      StatusCodeType.s503: l10n.s503,
      StatusCodeType.s504: l10n.s504,
      StatusCodeType.s999: l10n.s999,
      StatusCodeType.s601: l10n.s601,
      StatusCodeType.s602: l10n.s602,
      StatusCodeType.s603: l10n.s603,
      StatusCodeType.s604: l10n.s604,
      StatusCodeType.s605: l10n.s605,
      StatusCodeType.s606: l10n.s606,
      StatusCodeType.s607: l10n.s607,
      StatusCodeType.s608: l10n.s608,
      StatusCodeType.s609: l10n.s609,
      StatusCodeType.s610: l10n.s610,
      StatusCodeType.s611: l10n.s611,
      StatusCodeType.s612: l10n.s612,
      StatusCodeType.s613: l10n.s613,
      StatusCodeType.s614: l10n.s614,
      StatusCodeType.s615: l10n.s615,
      StatusCodeType.s616: l10n.s616,
      StatusCodeType.s617: l10n.s617,
      StatusCodeType.s618: l10n.s618,
      StatusCodeType.s619: l10n.s619,
      StatusCodeType.s620: l10n.s620,
      StatusCodeType.s621: l10n.s621,
      StatusCodeType.s622: l10n.s622,
      StatusCodeType.s623: l10n.s623,
      StatusCodeType.s624: l10n.s624,
      StatusCodeType.s625: l10n.s625,
      StatusCodeType.s626: l10n.s626,
      StatusCodeType.s627: l10n.s627,
      StatusCodeType.s628: l10n.s628,
      StatusCodeType.s629: l10n.s629,
      StatusCodeType.s630: l10n.s630,
      StatusCodeType.s631: l10n.s631,
      StatusCodeType.s632: l10n.s632,
      StatusCodeType.s633: l10n.s633,
      StatusCodeType.s634: l10n.s634,
      StatusCodeType.s635: l10n.s635,
      StatusCodeType.s636: l10n.s636,
      StatusCodeType.s637: l10n.s637,
      StatusCodeType.s638: l10n.s638,
      StatusCodeType.s639: l10n.s639,
      StatusCodeType.s640: l10n.s640,
      StatusCodeType.s641: l10n.s641,
      StatusCodeType.s642: l10n.s642,
      StatusCodeType.s643: l10n.s643,
      StatusCodeType.s644: l10n.s644,
      StatusCodeType.s645: l10n.s645,
      StatusCodeType.s646: l10n.s646,
      StatusCodeType.s647: l10n.s647,
      StatusCodeType.s648: l10n.s648,
      StatusCodeType.s649: l10n.s649,
      StatusCodeType.s650: l10n.s650,
      StatusCodeType.s651: l10n.s651,
      StatusCodeType.s652: l10n.s652,
      StatusCodeType.s653: l10n.s653,
      StatusCodeType.s654: l10n.s654,
      StatusCodeType.s655: l10n.s655,
      StatusCodeType.s656: l10n.s656,
      StatusCodeType.s657: l10n.s657,
      StatusCodeType.s658: l10n.s658,
      StatusCodeType.s659: l10n.s659,
      StatusCodeType.s660: l10n.s660,
      StatusCodeType.s661: l10n.s661,
      StatusCodeType.s662: l10n.s662,
      StatusCodeType.s663: l10n.s663,
      StatusCodeType.s664: l10n.s664,
      StatusCodeType.s665: l10n.s665,
      StatusCodeType.s667: l10n.s667,
      StatusCodeType.s668: l10n.s668,
      StatusCodeType.s669: l10n.s669,
      StatusCodeType.s670: l10n.s670,
      StatusCodeType.s671: l10n.s671,
      StatusCodeType.s672: l10n.s672,
      StatusCodeType.s673: l10n.s673,
      StatusCodeType.s674: l10n.s674,
      StatusCodeType.s675: l10n.s675,
      StatusCodeType.s676: l10n.s676,
      StatusCodeType.s677: l10n.s677,
      StatusCodeType.s678: l10n.s678,
      StatusCodeType.s679: l10n.s679,
      StatusCodeType.s680: l10n.s680,
      StatusCodeType.s681: l10n.s681,
      StatusCodeType.s682: l10n.s682,
      StatusCodeType.s683: l10n.s683,
      StatusCodeType.s684: l10n.s684,
      StatusCodeType.s685: l10n.s685,
      StatusCodeType.s686: l10n.s686,
      StatusCodeType.s687: l10n.s687,
      StatusCodeType.s688: l10n.s688,
      StatusCodeType.s689: l10n.s689,
      StatusCodeType.s690: l10n.s690,
      StatusCodeType.s691: l10n.s691,
      StatusCodeType.s692: l10n.s692,
      StatusCodeType.s693: l10n.s693,
      StatusCodeType.s694: l10n.s694,
      StatusCodeType.s695: l10n.s695,
      StatusCodeType.s696: l10n.s696,
      StatusCodeType.s697: l10n.s697,
      StatusCodeType.s698: l10n.s698,
      StatusCodeType.s699: l10n.s699,
      StatusCodeType.s700: l10n.s700,
      StatusCodeType.s701: l10n.s701,
      StatusCodeType.s702: l10n.s702,
      StatusCodeType.s703: l10n.s703,
      StatusCodeType.s704: l10n.s704,
      StatusCodeType.s705: l10n.s705,
      StatusCodeType.s706: l10n.s706,
      StatusCodeType.s707: l10n.s707,
      StatusCodeType.s708: l10n.s708,
      StatusCodeType.s709: l10n.s709,
      StatusCodeType.s710: l10n.s710,
      StatusCodeType.s711: l10n.s711,
      StatusCodeType.s712: l10n.s712,
      StatusCodeType.s713: l10n.s713,
      StatusCodeType.s714: l10n.s714,
      StatusCodeType.s715: l10n.s715,
      StatusCodeType.s716: l10n.s716,
      StatusCodeType.s717: l10n.s717,
      StatusCodeType.s718: l10n.s718,
      StatusCodeType.s719: l10n.s719,
      StatusCodeType.s720: l10n.s720,
      StatusCodeType.s721: l10n.s721,
      StatusCodeType.s722: l10n.s722,
      StatusCodeType.s723: l10n.s723,
      StatusCodeType.s724: l10n.s724,
      StatusCodeType.s725: l10n.s725,
      StatusCodeType.s726: l10n.s726,
      StatusCodeType.s727: l10n.s727,
      StatusCodeType.s728: l10n.s728,
      StatusCodeType.s729: l10n.s729,
      StatusCodeType.s730: l10n.s730,
      StatusCodeType.s731: l10n.s731,
      StatusCodeType.s732: l10n.s732,
      StatusCodeType.s733: l10n.s733,
      StatusCodeType.s734: l10n.s734,
      StatusCodeType.s735: l10n.s735,
      StatusCodeType.s736: l10n.s736,
      StatusCodeType.s737: l10n.s737,
      StatusCodeType.s738: l10n.s738,
      StatusCodeType.s739: l10n.s739,
      StatusCodeType.s740: l10n.s740,
      StatusCodeType.s741: l10n.s741,
      StatusCodeType.s742: l10n.s742,
      StatusCodeType.s743: l10n.s743,
      StatusCodeType.s744: l10n.s744,
      StatusCodeType.s745: l10n.s745,
      StatusCodeType.s746: l10n.s746,
      StatusCodeType.s747: l10n.s747,
      StatusCodeType.s748: l10n.s748,
      StatusCodeType.s749: l10n.s749,
      StatusCodeType.s750: l10n.s750,
      StatusCodeType.s751: l10n.s751,
      StatusCodeType.s752: l10n.s752,
      StatusCodeType.s753: l10n.s753,
      StatusCodeType.s754: l10n.s754,
      StatusCodeType.s755: l10n.s755,
      StatusCodeType.s756: l10n.s756,
      StatusCodeType.s757: l10n.s757,
      StatusCodeType.s758: l10n.s758,
      StatusCodeType.s759: l10n.s759,
      StatusCodeType.s760: l10n.s760,
      StatusCodeType.s761: l10n.s761,
      StatusCodeType.s762: l10n.s762,
      StatusCodeType.s763: l10n.s763,
      StatusCodeType.s764: l10n.s764,
      StatusCodeType.s765: l10n.s765,
      StatusCodeType.s766: l10n.s766,
      StatusCodeType.s767: l10n.s767,
      StatusCodeType.s768: l10n.s768,
      StatusCodeType.s769: l10n.s769,
      StatusCodeType.s770: l10n.s770,
    };
    return translations[this] ?? '';
    /*switch (this) {
      // success
      case StatusCodeType.s200:
        return l10n.s200;
      case StatusCodeType.s201:
        return l10n.s201;
      case StatusCodeType.s202:
        return l10n.s202;
      // client errors
      case StatusCodeType.s400:
        return l10n.s400;
      case StatusCodeType.s401:
        return l10n.s401;
      case StatusCodeType.s403:
        return l10n.s403;
      case StatusCodeType.s404:
        return l10n.s404;
      case StatusCodeType.s405:
        return l10n.s405;
      case StatusCodeType.s406:
        return l10n.s406;
      case StatusCodeType.s408:
        return l10n.s408;
      case StatusCodeType.s409:
        return l10n.s409;
      case StatusCodeType.s412:
        return l10n.s412;
      // server errors
      case StatusCodeType.s500:
        return l10n.s500;
      case StatusCodeType.s501:
        return l10n.s501;
      case StatusCodeType.s502:
        return l10n.s502;
      case StatusCodeType.s503:
        return l10n.s503;
      case StatusCodeType.s504:
        return l10n.s504;
      case StatusCodeType.s999:
        return l10n.s999;
      // custom errors
      case StatusCodeType.s601:
        return l10n.s601;
      case StatusCodeType.s602:
        return l10n.s602;
      case StatusCodeType.s603:
        return l10n.s603;
      case StatusCodeType.s604:
        return l10n.s604;
      case StatusCodeType.s605:
        return l10n.s605;
      case StatusCodeType.s606:
        return l10n.s606;
      case StatusCodeType.s607:
        return l10n.s607;
      case StatusCodeType.s608:
        return l10n.s608;
      case StatusCodeType.s609:
        return l10n.s609;
      case StatusCodeType.s610:
        return l10n.s610;
      case StatusCodeType.s611:
        return l10n.s611;
      case StatusCodeType.s612:
        return l10n.s612;
      case StatusCodeType.s613:
        return l10n.s613;
      case StatusCodeType.s614:
        return l10n.s614;
      case StatusCodeType.s615:
        return l10n.s615;
      case StatusCodeType.s616:
        return l10n.s616;
      case StatusCodeType.s617:
        return l10n.s617;
      case StatusCodeType.s618:
        return l10n.s618;
      case StatusCodeType.s619:
        return l10n.s619;
      case StatusCodeType.s620:
        return l10n.s620;
      case StatusCodeType.s621:
        return l10n.s621;
      case StatusCodeType.s622:
        return l10n.s622;
      case StatusCodeType.s623:
        return l10n.s623;
      case StatusCodeType.s624:
        return l10n.s624;
      case StatusCodeType.s625:
        return l10n.s625;
      case StatusCodeType.s626:
        return l10n.s626;
      case StatusCodeType.s627:
        return l10n.s627;
      case StatusCodeType.s628:
        return l10n.s628;
      case StatusCodeType.s629:
        return l10n.s629;
      case StatusCodeType.s630:
        return l10n.s630;
      case StatusCodeType.s631:
        return l10n.s631;
      case StatusCodeType.s632:
        return l10n.s632;
      case StatusCodeType.s633:
        return l10n.s633;
      case StatusCodeType.s634:
        return l10n.s634;
      case StatusCodeType.s635:
        return l10n.s635;
      case StatusCodeType.s636:
        return l10n.s636;
      case StatusCodeType.s637:
        return l10n.s637;
      case StatusCodeType.s638:
        return l10n.s638;
      case StatusCodeType.s639:
        return l10n.s639;
      case StatusCodeType.s640:
        return l10n.s640;
      case StatusCodeType.s641:
        return l10n.s641;
      case StatusCodeType.s642:
        return l10n.s642;
      case StatusCodeType.s643:
        return l10n.s643;
      case StatusCodeType.s644:
        return l10n.s644;
      case StatusCodeType.s645:
        return l10n.s645;
      case StatusCodeType.s646:
        return l10n.s646;
      case StatusCodeType.s647:
        return l10n.s647;
      case StatusCodeType.s648:
        return l10n.s648;
      case StatusCodeType.s649:
        return l10n.s649;
      case StatusCodeType.s650:
        return l10n.s650;
      case StatusCodeType.s680:
        return l10n.s680;
      case StatusCodeType.s681:
        return l10n.s681;
      case StatusCodeType.s682:
        return l10n.s682;
      case StatusCodeType.s683:
        return l10n.s683;
      case StatusCodeType.s684:
        return l10n.s684;
      case StatusCodeType.s685:
        return l10n.s685;
      case StatusCodeType.s686:
        return l10n.s686;
      case StatusCodeType.s687:
        return l10n.s687;
      case StatusCodeType.s740:
        return l10n.s740;
      case StatusCodeType.s762:
        return l10n.s762;
      //usuario
      case StatusCodeType.s780:
        return l10n.s780;
      //duplicado de cedula
      case StatusCodeType.s722:
        return l10n.s722;
      case StatusCodeType.s738:
        return l10n.s738;
      case StatusCodeType.s739:
        return l10n.s739;
      case StatusCodeType.s757:
        return l10n.s757;
    }*/
  }
}
