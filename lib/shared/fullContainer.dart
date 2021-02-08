import 'package:flutter/material.dart';

class FullScreenContainer extends Container {
  FullScreenContainer(BuildContext context)
      : super(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        );
}
