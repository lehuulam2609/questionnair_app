
import 'package:flutter/material.dart';
import 'package:questionnair_app/utils/app_style.dart';

class DropdownButtonWidget extends StatelessWidget {
  final List<String> data;
  final void Function(String?) onChange;
  final String? hintText;
  final String? valueSelected;
  const DropdownButtonWidget(
      {Key? key,
      required this.data,
      required this.onChange,
      this.hintText,
      this.valueSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyles.normalTextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      value: valueSelected,
      onChanged: onChange.call,
      items: List.generate(
        data.length,
        (index) => DropdownMenuItem(
          value: data[index],
          child: Text(data[index]),
        ),
      ),
    );
  }
}

class CustomDropdownDataWidget<T> extends StatelessWidget {
  final List<T> data;
  final void Function(T?) onChange;
  final String? hintText;
  final T? valueSelected;
  final Widget Function(int) itemBuilder;
  const CustomDropdownDataWidget({
    Key? key,
    required this.data,
    required this.onChange,
    required this.itemBuilder,
    this.hintText,
    this.valueSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        fillColor: AppColor.white,
        hintText: hintText,
        hintStyle: TextStyles.normalTextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      value: valueSelected,
      onChanged: onChange.call,
      items: List.generate(
        data.length,
        (index) => DropdownMenuItem(
          value: data[index],
          child: itemBuilder.call(index),
        ),
      ),
    );
  }
}
