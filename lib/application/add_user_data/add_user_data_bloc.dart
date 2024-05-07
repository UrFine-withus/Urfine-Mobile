import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/medical_records/i_medical_records_repo.dart';
import 'package:urfine/domain/token_manager/i_token_manager_repo.dart';
import 'package:urfine/domain/user_details/i_user_details_repo.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

part 'add_user_data_event.dart';
part 'add_user_data_state.dart';
part 'add_user_data_bloc.freezed.dart';

@injectable
class AddUserDataBloc extends Bloc<AddUserDataEvent, AddUserDataState> {
  final IUserDetailsRepo _userDetailsRepo;
  final ITokenManagerRepo _tokenManagerRepo;
  final IMedicalRecordsRepo _medicalRecordsRepo;
  AddUserDataBloc(
      this._userDetailsRepo, this._tokenManagerRepo, this._medicalRecordsRepo)
      : super(AddUserDataState.initial()) {
    on<_AddUserDataEvent>((event, emit) async {
      emit(AddUserDataState(isSubmitting: true, addUserDataOption: none()));
      final result = await _userDetailsRepo.addUser(event.model);
      await result.fold(
        (l) {
          emit(
            AddUserDataState(
              isSubmitting: false,
              addUserDataOption: some(
                left(l),
              ),
            ),
          );
        },
        (r) async {
          await _tokenManagerRepo.saveName();
          emit(
            state.copyWith(
              addUserDataOption: some(
                right(r),
              ),
            ),
          );
        },
      );
    });
    on<_Done>((event, emit) {
      emit(state.copyWith(isSubmitting: false,));
    });
  }
}
