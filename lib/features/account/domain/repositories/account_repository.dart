import 'package:dishes_mobile/features/account/data/repositories/data_account_repository.dart';

class AccountRepository extends DataAccountRepository {
  Future getUserInfos() {
    return getUserAccountInfos();
  }
}
