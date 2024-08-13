import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:projectform/utils/text_color.dart';
import 'package:projectform/utils/text_style.dart';
import 'package:projectform/utils/textbox.dart';

class Myform extends StatelessWidget {
  final TextEditingController firstnamecontroller;
  final TextEditingController middlenamecontroller;
  final TextEditingController lastnamecontroller;
  final TextEditingController yearscontroller;
  final TextEditingController monthcontroller;
  final TextEditingController dateofbirthController;
  final TextEditingController genderControler;



  const Myform({super.key, required this.firstnamecontroller,required this.middlenamecontroller, required this.lastnamecontroller, required this.yearscontroller, required this.dateofbirthController, required this.genderControler, required this.monthcontroller });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  customText: "First Name",
                  controller: firstnamecontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                  inputFormatters: [],
                  onChanged: (value) {}),
            ),
            const Gap(20),
            Expanded(
              child: CustomTextFormField(
                  customText: "Middel Name",
                  controller: middlenamecontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Middle name';
                    }
                    return null;
                  },
                  inputFormatters: [],
                  onChanged: (value) {}),
            ),
            Expanded(
              child: CustomTextFormField(
                  customText: "Last Name",
                  controller: lastnamecontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Last Name';
                    }
                    return null;
                  },
                  inputFormatters: [],
                  onChanged: (value) {}),
            ),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: yearscontroller.text,
                    onChanged: (String? newValue) {
                      ;
                    },
                    decoration: InputDecoration(
                      label: const Text("Years",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFC5C5C5))),
                      //suffixIcon: iconss,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFC5C5C5)),
                      errorStyle:
                          const TextStyle(height: 0, color: ConstColors.red),
                      filled: true,
                      fillColor: ConstColors.backgroundColor.withOpacity(.7),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 16),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: .6),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: .6, color: ConstColors.red),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: .6, color: ConstColors.red),
                      ),
                    ),
                    isExpanded: true,
                    items: <String>["2020","2021", "2022", "2023", "2024", '2025']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: getTextTheme().headlineMedium,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const Gap(20),
                Expanded(
                  child: CustomTextFormField(
                      customText: "Months",
                      keyoardType: TextInputType.number,
                      controller: monthcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Age';
                        }
                        return null;
                      },
                      inputFormatters: [],
                      onChanged: (value) {}),
                ),
              ],
            ),
              const Gap(20),
            Expanded(
              child: CustomTextFormField(
                  customText: "Select DOB",
                  controller: dateofbirthController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Date of birth';
                    }
                    return null;
                  },
                  inputFormatters: [],
                  onChanged: (value) {}),
            ),
            Gap(20),
            Expanded(
                  child: DropdownButtonFormField<String>(
                    value: genderControler.text,
                    onChanged: (String? newValue) {
                      ;
                    },
                    decoration: InputDecoration(
                      label: const Text("Gender",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFC5C5C5))),
                      //suffixIcon: iconss,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFC5C5C5)),
                      errorStyle:
                          const TextStyle(height: 0, color: ConstColors.red),
                      filled: true,
                      fillColor: ConstColors.backgroundColor.withOpacity(.7),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 16),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            width: .6, color: ConstColors.primaryColor),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: .6),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: .6, color: ConstColors.red),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: .6, color: ConstColors.red),
                      ),
                    ),
                    isExpanded: true,
                    items: <String>['Male', 'Female', 'Other']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: getTextTheme().headlineMedium,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const Gap(20),
                Expanded(
                child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [ConstColors.primaryColor, ConstColors.red],
                  ),
                ),
                child:  Text(
                              "Submit",
                              style: getTextTheme().titleMedium,
                            ),
                    ),)

            
          ],
        ),
      ],
    );
  }
}
