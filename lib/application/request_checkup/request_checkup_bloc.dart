import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/request_checkup/i_request_repo.dart';
import 'package:urfine/domain/request_checkup/model/request_model.dart';

part 'request_checkup_event.dart';
part 'request_checkup_state.dart';
part 'request_checkup_bloc.freezed.dart';

@injectable
class RequestCheckupBloc
    extends Bloc<RequestCheckupEvent, RequestCheckupState> {
  final IRequestRepo _requestRepo;
  RequestCheckupBloc(this._requestRepo) : super(RequestCheckupState.initial()) {
    on<RequestCheckupEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await _requestRepo.checkupRequest(event.requestModel);
      response.fold(
        (l) {
          emit(
            state.copyWith(
              isLoading: false,
              requestFailureOrSuccessOption: some(
                left(l),
              ),
            ),
          );
        },
        (r) {
          emit(
            state.copyWith(
              isLoading: false,
              requestFailureOrSuccessOption: some(
                right(null),
              ),
            ),
          );
        },
      );
    });
  }
}
