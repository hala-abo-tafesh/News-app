import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width= double.infinity ,
  Color background= Colors.blue,
  bool isUpperCase = true,
  double radius = 10.0,
   required Function function,
   required String text,
}) =>
    Container(
  width: width,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ) ,
  child: MaterialButton(
    onPressed: ()=>function(),
        child: Text (
          isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  VoidCallback? onSubmit,
  ValueChanged<String>? onChanged,
  bool isPassword=false,
  required String? Function(String?) validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable=true,
}) =>
    TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: onSubmit != null ? (s) => onSubmit() : null,
  onChanged: onChanged,
  validator: validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixPressed!() ,
      icon: Icon(
        suffix  ,
      ),
    ) :null,
    border: OutlineInputBorder(),
  ),
);
Widget buildTaskItem(Map model , context) => Dismissible(
  key: Key(model['id'].toString()),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 30.0,
          child: Text(
            '${model['time']}',
            style: TextStyle(
              fontSize: 9,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Text(
                '${model['title']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${model['date']}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        IconButton(
          onPressed: (){
            //AppCubit.get(context).updateData(
              //status: 'done',
            //  id: model['id'],
           // );
         },
          icon: Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ),
        IconButton(
          onPressed: (){
            //AppCubit.get(context).updateData(
             // status: 'archive',
              //id: model['id'],
           // );
          },
          icon: Icon(
            Icons.archive,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
  onDismissed: (direction)
  {
    //AppCubit.get(context).deleteData(id: model['id']);
  },
);

Widget tasksBuilder({
  required List<Map> tasks,
}) => ConditionalBuilder(
  condition: tasks.isNotEmpty,
  builder: (context) => ListView.separated(
    itemBuilder: (context,index) => buildTaskItem(tasks[index] , context),
    separatorBuilder: (context,index) => myDivider(),
    itemCount: tasks.length,
  ),
  fallback: (context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Icon(
          Icons.menu,
          size: 100,
          color: Colors.grey,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'No tasks yet , Please add some tasks',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        )
      ],
    ),
  ),
);
Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
      start:20.0
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[200],
  ),
);

Widget  buildArticaleItem(var article,context) =>
    Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        width: 120.0,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage('${article['urlToImage']}'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Container(
          height: 120.0,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Expanded(
                child: Text(
                  '${article['title']}',
                  style: Theme.of(context).textTheme.bodyMedium ,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${article['publishedAt']}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      )
    ],
  ),
    );
Widget articeBuilder(list,context) =>  ConditionalBuilder(
  condition: list.length>0 ,
  fallback: (context)=>  Center(child: CircularProgressIndicator()),
  builder: (context) =>  ListView.separated(
    itemCount: list.length,
    itemBuilder: (context, index) => buildArticaleItem(list[index],context),
    separatorBuilder: (context, index) => myDivider(),
  ),
);