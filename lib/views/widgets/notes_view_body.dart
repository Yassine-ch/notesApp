import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 10,),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 25,bottom: 25, left: 16 ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips' ,style: TextStyle(color: Colors.black , fontSize: 30),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                    'Build your career dev dev dev '
                    'dev dev dev  with yassine_dev company'
                    ,style: TextStyle(color: Colors.black,fontSize: 25)),
              ),
            ),
            trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.delete,
                  color: Colors.black,
                  size: 25,
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May 21, 2023',
            style: TextStyle(
              color: Colors.black,

            )
            ),
          )
        ],
      ),
    );
  }
}
