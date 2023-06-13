import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ForgotPasswordOtpVerificationPage extends ConsumerStatefulWidget {
  const ForgotPasswordOtpVerificationPage({
    super.key,
    required this.command,
    required this.email,
  });

  final String email;
  final String command;

  @override
  ConsumerState<ForgotPasswordOtpVerificationPage> createState() =>
      _ForgotPasswordOtpVerificationPageState();
}

class _ForgotPasswordOtpVerificationPageState
    extends ConsumerState<ForgotPasswordOtpVerificationPage> {
  MeModel? me;

  @override
  void initState() {
    super.initState();
    _fetchMeByEmail();
  }

  Future<void> _fetchMeByEmail() async {
    final fetchedMe =
        await ref.read(forgotPasswordProvider.notifier).meByEmail(widget.email);
    me = fetchedMe;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ForgotOtpModelFormBuilder(
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
                ReactiveForgotOtpModelFormConsumer(
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
                      // hasError: otp != newForm.codeControl.value,
                      style: const TextStyle(
                        fontSize: fontSizeDefault + 5,
                        color: Colors.white,
                      ),
                      inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                      outlineBorderRadius: 15,
                      spaceBetween: 8,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      onChanged: (value) {
                        //  update the value in the form
                        form.codeControl.value = value;
                        /*if (value != otp) {
                          form.codeControl.setErrors(
                            {ValidationsMessageType.invalidCode.toText: true},
                          );
                          return;
                        }
                        form.codeControl.removeError(
                          ValidationsMessageType.invalidCode.toText,
                        );*/
                      },
                      onCompleted: (pin) => form.codeControl.value = pin,
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          bottomNavigationBar: ReactiveForgotOtpModelFormConsumer(
            builder: (_, form, __) {
              return PrimaryAsyncButton(
                title: l10n.siguiente,
                onPressed: form.form.valid
                    ? () async {
                        if (me == null || me!.id.isEmpty) {
                          me = await ref.read(forgotPasswordProvider.notifier).meByEmail(widget.email);
                        }
                        form.model.userId = me!.id;
                        //Aqui tengo que llamar al metodo que envia el otp (step_two)
                        // ref.read(provider)
                        context.navigateTo(
                          ForgotPasswordSecondRoute(
                            userId: me!.id,
                          ),
                        );
                      }
                    : null,
              );
            },
          ),
        );
      },
    );
  }
}
