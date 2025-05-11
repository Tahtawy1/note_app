import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 12),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                      'Build your career with tharwat samy',
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                      ),
                    ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.trash, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  'May21,2022',
                  // ignore: deprecated_member_use
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ),
          ],
        ),
      
    );
  }
}
