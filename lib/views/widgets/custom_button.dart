import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            height: 56,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                isLoading
                    ? SizedBox(
                      height: 26,
                      width: 26,
                      child: CircularProgressIndicator(color: Colors.black),
                    )
                    : Text(
                      'Add',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
          ),
        );
      },
    );
  }
}
