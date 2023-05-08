import 'package:flutter/material.dart';

enum Crud {
  create('create'),
  read('read'),
  update('update'),
  delete('delete');

  const Crud(this.toText);
  final String toText;

  Widget toIcon(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    switch (this) {
      case Crud.create:
        return Icon(
          Icons.add,
          color: color,
        );
      case Crud.read:
        return Icon(
          Icons.remove_red_eye,
          color: color,
        );
      case Crud.update:
        return Icon(
          Icons.edit,
          color: color,
        );
      case Crud.delete:
        return const Icon(
          Icons.delete,
          color: Colors.red,
        );
    }
  }
}
