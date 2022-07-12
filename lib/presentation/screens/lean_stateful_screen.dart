import 'package:flutter/cupertino.dart';

import '../widgets/lean_scaffold.dart';
//todo 12.07.2022 12:07 von @Matthias to @Collin: .
abstract class LeanStatefulScreen<T extends StatefulWidget> extends State<T>{
  @override
  Widget build(BuildContext context) {
    return LeanScaffold(body: buildBody(context));
  }


  //todo 12.07.2022 12:08 von @Matthias to @Collin: .
  Widget buildBody(BuildContext context);

}