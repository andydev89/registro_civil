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

  //Errores para el cambio de nombre
  s680(680),
  s681(681),
  s682(682),
  s683(683),
  s684(684),
  s685(685),
  s686(686),
  s687(687);

  const StatusCodeType(this.code);
  final int code;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
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
    }
  }
}
