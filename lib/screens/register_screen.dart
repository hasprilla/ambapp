import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../themes/theme.dart';
import '../utils/utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isValue = false;
  Country selectedCountry = Country(
    phoneCode: "57",
    countryCode: "CO",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Colombia",
    example: "Colombia",
    displayName: "Colombia",
    displayNameNoCountryCode: "CO",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneController.text.length,
      ),
    );
    passwordController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: passwordController.text.length,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(
              title: "AMB APP", subtitle: "Login", isopenicon: true),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Celular', style: AppTheme.h5),
                        const SizedBox(height: 5),
                        TextFormField(
                          cursorColor: AppTheme.primary,
                          controller: phoneController,
                          style: AppTheme.h5,
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            setState(() {
                              phoneController.text = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Celular",
                            hintStyle: AppTheme.hintStyle,
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  showCountryPicker(
                                      context: context,
                                      countryListTheme:
                                          const CountryListThemeData(
                                        bottomSheetHeight: 550,
                                      ),
                                      onSelect: (value) {
                                        setState(() {
                                          selectedCountry = value;
                                        });
                                      });
                                },
                                child: Text(
                                  "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                                  style: AppTheme.h3,
                                ),
                              ),
                            ),
                            suffixIcon: phoneController.text.length > 9
                                ? Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.all(10.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primary,
                                    ),
                                    child: const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text('Clave', style: AppTheme.h5),
                        const SizedBox(height: 10),
                        TextFormField(
                          cursorColor: AppTheme.primary,
                          controller: passwordController,
                          obscureText: true,
                          style: AppTheme.h5,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {
                              passwordController.text = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Clave",
                            hintStyle: AppTheme.hintStyle,
                            suffixIcon: passwordController.text.length == 6
                                ? Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.all(10.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primary,
                                    ),
                                    child: const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Switch(
                              activeColor: AppTheme.primary,
                              value: isValue,
                              onChanged: (value) {
                                setState(() {
                                  isValue = value;
                                });
                              },
                            ),
                            const Text('Recorgar', style: AppTheme.h5),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                    const SizedBox(height: 128),
                    Column(
                      children: [
                        SizedBox(
                          width: 220,
                          height: 50,
                          child: CustomButton(
                              text: "Entrar",
                              onPressed: () {
                                String phoneNumber =
                                    phoneController.text.trim();
                                String password =
                                    passwordController.text.trim();

                                if (phoneNumber.isEmpty || password.isEmpty) {
                                  return showSnackBar(
                                      context, 'Ingrese el celular y la clave');
                                }

                                final ap = Provider.of<AuthProvider>(context,
                                    listen: false);

                                ap.signInWithPhone(
                                    context,
                                    "+${selectedCountry.phoneCode}$phoneNumber",
                                    password);
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    const Text('Olvido su clave?', style: AppTheme.h5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
