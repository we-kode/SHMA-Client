import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/shma_client_localizations.dart';

/// Shows a confirmation dialog for deletion.
showDeleteDialog(BuildContext context) async{
  var localization = AppLocalizations.of(context)!;
  var shouldDelete = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(localization.remove),
      content: Text(localization.deleteConfirmation),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(localization.cancel),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(localization.yes),
        ),
      ],
    ),
  );

  return shouldDelete;
}
