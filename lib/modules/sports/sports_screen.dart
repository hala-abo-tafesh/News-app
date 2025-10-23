// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// /import 'package:hr/layout/news_app/cubit/cubit.dart';
// import 'package:hr/layout/news_app/cubit/states.dart';
// import 'package:hr/shared/components/components.dart';
//
// class SportsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context)
//   {
//     return BlocConsumer <NewsCubit, NewsStates >(
//       listener: (context, state) {} ,
//       builder: (context, state)
//       {
//         var list= NewsCubit.get(context).sports;
//         return ConditionalBuilder(
//           condition: list.length>0 ,
//           fallback: (context)=>  Center(child: CircularProgressIndicator()),
//           builder: (context) =>  ListView.separated(
//             itemCount: list.length,
//             itemBuilder: (context, index) => buildArticaleItem(list[index],context),
//             separatorBuilder: (context, _) => myDivider(),
//           ),
//         );
//       },
//     ) ;
//   }
// }
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/layout/news_app/cubit/cubit.dart';
import 'package:hr/layout/news_app/cubit/states.dart';
import 'package:hr/shared/components/components.dart';

class SportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer <NewsCubit, NewsStates >(
      listener: (context, state) {} ,
      builder: (context, state)
      {
        var list= NewsCubit.get(context).sports;
        return articeBuilder(list,context) ;
      },
    ) ;
  }
}