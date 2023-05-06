import 'package:insta/views/components/dialogs/alert_dialog_model.dart';
import 'package:insta/views/constants/strings.dart';

class LogoutDialog extends AlertDialogModel {
  const LogoutDialog()
      : super(
            title: Strings.logOut,
            message: Strings.areYouSureThatYouWantToLogOutOfTheApp,
            buttons: const {
              Strings.cancel: false,
              Strings.logOut: true,
            });
}
