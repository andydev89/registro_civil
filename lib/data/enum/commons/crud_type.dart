import 'package:flutter/material.dart';

enum Crud {
  create('create'),
  read('read'),
  update('update'),
  delete('delete');

  const Crud(this.toText);
  final String toText;

  bool get isEditOrRead => this == Crud.update || this == Crud.read;

  bool get isCreateOrEdit => this == Crud.create || this == Crud.update;

  bool get isCreate => this == Crud.create;

  bool get isEdit => this == Crud.update;

  bool get isRead => this == Crud.read;

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
