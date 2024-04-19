import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';
@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.serverFailure() = _ServerFailure;
  const factory MainFailure.authFailure(String message) = AuthFailure;
  const factory MainFailure.noInternet() = NoInternet;
  const factory MainFailure.otherFailure() = OtherFailure;
}
