import 'package:flutter/material.dart';
import 'package:la_comer/common/subtitle/custom_subtitle.dart';
import 'package:la_comer/constants/colors.dart';
import 'package:la_comer/constants/sizes.dart';
import 'package:la_comer/utils/navigation.dart';

import '../../../common/button/custom_button.dart';
import '../../../common/page/custom_page.dart';
import '../../../common/text_field/custom_text_field.dart';
import '../../../routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/PNG/isotipo login.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.22,
                    ),
                    Image.asset(
                      'assets/PNG/logotipo.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextField(
                      hintText: 'Correo Electronico',
                      onSubmitted: (value) {},
                      iconData: Icons.email_outlined,
                    ),
                    CustomTextField(
                      hintText: 'Contraseña',
                      onSubmitted: (value) {},
                      iconData: Icons.password,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      title: 'Iniciar Sesión',
                      onTap: () {
                        goTo(
                          routeName: Routes.home,
                          context: context,
                        );
                      },
                    ),
                    const CustomSubtitle(
                      subtitle: 'No tienes cuenta? Registrate',
                      color: MainColor.primary100,
                      size: spacingM_16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        CustomSubtitle(
                          subtitle: 'O inicia sesión con',
                          color: MainColor.primary100,
                          size: spacingM_16,
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/PNG/facebook.png'),
                        const SizedBox(
                          width: spacingM_20,
                        ),
                        Image.asset('assets/PNG/ios.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
