import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum StatusCodes implements Translatable {
  // success
  s200('s200'),
  s201('s201'),
  s202('s202'),
  // client errors
  s400('s400'),
  s401('s401'),
  s403('s403'),
  s404('s404'),
  s405('s405'),
  s406('s406'),
  s408('s408'),
  s409('s409'),
  // server errors
  s500('s500'),
  s501('s501'),
  s502('s502'),
  s503('s503'),
  s504('s504'),
  s999('s999'),
  // custom errors
  s601('s601'),
  s602('s602'),
  s603('s603'),
  s604('s604'),
  s605('s605'),
  s606('s606'),
  s607('s607'),
  s608('s608'),
  s609('s609'),
  s610('s610'),
  s611('s611'),
  s612('s612'),
  s613('s613'),
  s614('s614'),
  s615('s615'),
  s616('s616'),
  s617('s617'),
  s618('s618'),
  s619('s619'),
  s620('s620'),
  s621('s621'),
  s622('s622'),
  s623('s623'),
  s624('s624'),
  s625('s625'),
  s626('s626'),
  s627('s627'),
  s628('s628'),
  s629('s629'),
  s630('s630'),
  s631('s631'),
  s632('s632'),
  s633('s633'),
  s634('s634'),
  s635('s635'),
  s636('s636'),
  s637('s637'),
  s638('s638'),
  s639('s639'),
  s640('s640'),
  s641('s641'),
  s642('s642'),
  s643('s643'),
  s644('s644');

  const StatusCodes(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      // success
      case StatusCodes.s200:
        return l10n.s200;
      case StatusCodes.s201:
        return l10n.s201;
      case StatusCodes.s202:
        return l10n.s202;
      // client errors
      case StatusCodes.s400:
        return l10n.s400;
      case StatusCodes.s401:
        return l10n.s401;
      case StatusCodes.s403:
        return l10n.s403;
      case StatusCodes.s404:
        return l10n.s404;
      case StatusCodes.s405:
        return l10n.s405;
      case StatusCodes.s406:
        return l10n.s406;
      case StatusCodes.s408:
        return l10n.s408;
      case StatusCodes.s409:
        return l10n.s409;
      // server errors
      case StatusCodes.s500:
        return l10n.s500;
      case StatusCodes.s501:
        return l10n.s501;
      case StatusCodes.s502:
        return l10n.s502;
      case StatusCodes.s503:
        return l10n.s503;
      case StatusCodes.s504:
        return l10n.s504;
      case StatusCodes.s999:
        return l10n.s999;
      // custom errors
      case StatusCodes.s601:
        return l10n.s601;
      case StatusCodes.s602:
        return l10n.s602;
      case StatusCodes.s603:
        return l10n.s603;
      case StatusCodes.s604:
        return l10n.s604;
      case StatusCodes.s605:
        return l10n.s605;
      case StatusCodes.s606:
        return l10n.s606;
      case StatusCodes.s607:
        return l10n.s607;
      case StatusCodes.s608:
        return l10n.s608;
      case StatusCodes.s609:
        return l10n.s609;
      case StatusCodes.s610:
        return l10n.s610;
      case StatusCodes.s611:
        return l10n.s611;
      case StatusCodes.s612:
        return l10n.s612;
      case StatusCodes.s613:
        return l10n.s613;
      case StatusCodes.s614:
        return l10n.s614;
      case StatusCodes.s615:
        return l10n.s615;
      case StatusCodes.s616:
        return l10n.s616;
      case StatusCodes.s617:
        return l10n.s617;
      case StatusCodes.s618:
        return l10n.s618;
      case StatusCodes.s619:
        return l10n.s619;
      case StatusCodes.s620:
        return l10n.s620;
      case StatusCodes.s621:
        return l10n.s621;
      case StatusCodes.s622:
        return l10n.s622;
      case StatusCodes.s623:
        return l10n.s623;
      case StatusCodes.s624:
        return l10n.s624;
      case StatusCodes.s625:
        return l10n.s625;
      case StatusCodes.s626:
        return l10n.s626;
      case StatusCodes.s627:
        return l10n.s627;
      case StatusCodes.s628:
        return l10n.s628;
      case StatusCodes.s629:
        return l10n.s629;
      case StatusCodes.s630:
        return l10n.s630;
      case StatusCodes.s631:
        return l10n.s631;
      case StatusCodes.s632:
        return l10n.s632;
      case StatusCodes.s633:
        return l10n.s633;
      case StatusCodes.s634:
        return l10n.s634;
      case StatusCodes.s635:
        return l10n.s635;
      case StatusCodes.s636:
        return l10n.s636;
      case StatusCodes.s637:
        return l10n.s637;
      case StatusCodes.s638:
        return l10n.s638;
      case StatusCodes.s639:
        return l10n.s639;
      case StatusCodes.s640:
        return l10n.s640;
      case StatusCodes.s641:
        return l10n.s641;
      case StatusCodes.s642:
        return l10n.s642;
      case StatusCodes.s643:
        return l10n.s643;
      case StatusCodes.s644:
        return l10n.s644;
    }
  }
}
