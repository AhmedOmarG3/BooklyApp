import 'package:bookly/Features/search/presention/presention/manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.onSubmitted,
  });

  final void Function(String)? onSubmitted;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: 'Search',
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffBA67C8))),
        suffixIcon: GestureDetector(
          onTap: () {
            context
                .read<SearchCubit>()
                .fetchSearchedBooks(search: controller.text);
            FocusScope.of(context).unfocus();
          },
          child: const Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
        ),
      ),
    );
  }
}
