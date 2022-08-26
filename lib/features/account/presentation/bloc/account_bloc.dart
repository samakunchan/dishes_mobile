import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dishes_mobile/core/core.dart';

import '../../domain/repositories/account_repository.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(
      {required AccountRepository accountRepository,})
      : _accountRepository = accountRepository,
        super(const AccountState()) {

  }
  final AccountRepository _accountRepository;
}
