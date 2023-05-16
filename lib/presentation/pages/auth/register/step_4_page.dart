import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class Step4Page extends ConsumerWidget {
  const Step4Page({
    super.key,
    required this.command,
  });
  final String command;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final otp = command.split(':').last.trim();
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: OtpModelFormBuilder(
        builder: (_, form, __) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: ScrollableContent(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: PrimaryText(
                      l10n.ingreseCodVer,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: PrimaryText(
                      l10n.terminosCondiciones,
                      color: Colors.white,
                    ),
                  ),
                  ReactiveOtpModelFormConsumer(
                    builder: (_, newForm, __) {
                      return OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width * .7,
                        otpFieldStyle: OtpFieldStyle(
                          borderColor: Colors.white,
                          disabledBorderColor: Colors.white,
                          enabledBorderColor: Colors.white,
                          focusBorderColor: Colors.white,
                        ),
                        hasError: otp != newForm.codeControl.value,
                        style: const TextStyle(
                          fontSize: fontSizeDefault + 5,
                          color: Colors.white,
                        ),
                        inputFormatter: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        outlineBorderRadius: 15,
                        spaceBetween: 8,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        onChanged: (value) {
                          //  update the value in the form
                          form.codeControl.value = value;
                          if (value != otp) {
                            form.codeControl.setErrors(
                              {ValidationsMessageType.invalidCode.toText: true},
                            );
                            return;
                          }
                          form.codeControl.removeError(
                            ValidationsMessageType.invalidCode.toText,
                          );
                        },
                        onCompleted: (pin) => form.codeControl.value = pin,
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  PrimaryReactiveCheckBox(
                    formControl: form.isVerifiedControl,
                    label: l10n.aceptarTer,
                    underlining: true,
                    activeColor: const Color.fromRGBO(10, 141, 208, 1),
                    checkColor: Colors.white,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            bottomNavigationBar: ReactiveOtpModelFormConsumer(
              builder: (_, form, __) {
                return PrimaryButton(
                  title: l10n.siguiente,
                  onPressed: form.form.valid
                      ? () => context.navigateTo(Step5Route(code: otp))
                      : null,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
