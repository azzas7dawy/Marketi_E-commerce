part of 'auh_cubit_cubit.dart';

@immutable
sealed class AuhCubitState {}

final class AuhCubitInitial extends AuhCubitState {}
final class AuhCubitLoading extends AuhCubitState {}
final class AuhCubitSuccess extends AuhCubitState {}
final class AuhCubitFailure extends AuhCubitState {
  final String errorMessage;
  AuhCubitFailure({required this.errorMessage});
}
