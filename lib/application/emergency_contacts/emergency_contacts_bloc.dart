import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/emergency/i_emergency_repo.dart';
import 'package:urfine/domain/emergency/model/emergency_model.dart';
import 'package:urfine/domain/failure/failure.dart';

part 'emergency_contacts_event.dart';
part 'emergency_contacts_state.dart';
part 'emergency_contacts_bloc.freezed.dart';
@injectable
class EmergencyContactsBloc
    extends Bloc<EmergencyContactsEvent, EmergencyContactsState> {
  final IEmergencyRepo _emergencyRepo;
  EmergencyContactsBloc(this._emergencyRepo)
      : super(EmergencyContactsState.initial()) {
    on<EmergencyContactsEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        emergencyContactsFailureorSuccess: none(),
      ));
      final response = await _emergencyRepo.getEmergencyContact(event.type);
      response.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            emergencyContactsFailureorSuccess: some(left(l)),
          ));
        },
        (r) {
          switch (event.type) {
            case EmergencyContactType.hospital:
              emit(state.copyWith(
                isLoading: false,
                hospitalContacts: r.emergency,
              ));
              break;
            case EmergencyContactType.bloodBank:
              emit(state.copyWith(
                isLoading: false,
                bloodBankContacts: r.emergency,
              ));
              break;
            case EmergencyContactType.ambulance:
              emit(state.copyWith(
                isLoading: false,
                ambulanceContacts: r.emergency,
              ));
              break;
            case EmergencyContactType.clinic:
              emit(state.copyWith(
                isLoading: false,
                clinicContacts: r.emergency,
              ));
              break;
          }
        },
      );
    });
  }
}
