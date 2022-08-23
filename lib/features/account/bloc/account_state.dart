part of 'account_bloc.dart';

class AccountState extends Equatable {
  const AccountState({this.status = FormStatus.init});

  final FormStatus status;

  AccountState copyWith({FormStatus? status}) {
    return AccountState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
