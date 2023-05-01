import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

@JsonEnum(valueField: 'code')
enum StatusCode implements Translatable {
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
  s644(644);

  const StatusCode(this.code);
  final int code;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      // success
      case StatusCode.s200:
        return l10n.s200;
      case StatusCode.s201:
        return l10n.s201;
      case StatusCode.s202:
        return l10n.s202;
      // client errors
      case StatusCode.s400:
        return l10n.s400;
      case StatusCode.s401:
        return l10n.s401;
      case StatusCode.s403:
        return l10n.s403;
      case StatusCode.s404:
        return l10n.s404;
      case StatusCode.s405:
        return l10n.s405;
      case StatusCode.s406:
        return l10n.s406;
      case StatusCode.s408:
        return l10n.s408;
      case StatusCode.s409:
        return l10n.s409;
      case StatusCode.s412:
        //TODO traducir
        return 'Error al realizar el pago';
      // server errors
      case StatusCode.s500:
        return l10n.s500;
      case StatusCode.s501:
        return l10n.s501;
      case StatusCode.s502:
        return l10n.s502;
      case StatusCode.s503:
        return l10n.s503;
      case StatusCode.s504:
        return l10n.s504;
      case StatusCode.s999:
        return l10n.s999;
      // custom errors
      case StatusCode.s601:
        return l10n.s601;
      case StatusCode.s602:
        return l10n.s602;
      case StatusCode.s603:
        return l10n.s603;
      case StatusCode.s604:
        return l10n.s604;
      case StatusCode.s605:
        return l10n.s605;
      case StatusCode.s606:
        return l10n.s606;
      case StatusCode.s607:
        return l10n.s607;
      case StatusCode.s608:
        return l10n.s608;
      case StatusCode.s609:
        return l10n.s609;
      case StatusCode.s610:
        return l10n.s610;
      case StatusCode.s611:
        return l10n.s611;
      case StatusCode.s612:
        return l10n.s612;
      case StatusCode.s613:
        return l10n.s613;
      case StatusCode.s614:
        return l10n.s614;
      case StatusCode.s615:
        return l10n.s615;
      case StatusCode.s616:
        return l10n.s616;
      case StatusCode.s617:
        return l10n.s617;
      case StatusCode.s618:
        return l10n.s618;
      case StatusCode.s619:
        return l10n.s619;
      case StatusCode.s620:
        return l10n.s620;
      case StatusCode.s621:
        return l10n.s621;
      case StatusCode.s622:
        return l10n.s622;
      case StatusCode.s623:
        return l10n.s623;
      case StatusCode.s624:
        return l10n.s624;
      case StatusCode.s625:
        return l10n.s625;
      case StatusCode.s626:
        return l10n.s626;
      case StatusCode.s627:
        return l10n.s627;
      case StatusCode.s628:
        return l10n.s628;
      case StatusCode.s629:
        return l10n.s629;
      case StatusCode.s630:
        return l10n.s630;
      case StatusCode.s631:
        return l10n.s631;
      case StatusCode.s632:
        return l10n.s632;
      case StatusCode.s633:
        return l10n.s633;
      case StatusCode.s634:
        return l10n.s634;
      case StatusCode.s635:
        return l10n.s635;
      case StatusCode.s636:
        return l10n.s636;
      case StatusCode.s637:
        return l10n.s637;
      case StatusCode.s638:
        return l10n.s638;
      case StatusCode.s639:
        return l10n.s639;
      case StatusCode.s640:
        return l10n.s640;
      case StatusCode.s641:
        return l10n.s641;
      case StatusCode.s642:
        return l10n.s642;
      case StatusCode.s643:
        return l10n.s643;
      case StatusCode.s644:
        return l10n.s644;
    }
  }
}
