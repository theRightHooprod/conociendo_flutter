part of 'cow_container_cubit.dart';

@immutable
sealed class CowContainerState {}

final class CowContainerInitial extends CowContainerState {}

/// {@template test}
/// This [state] is for all actions. An [action] is [state] that only executes code on the
/// [frontend]
/// {@endtemplate}
final class CowContainerActionState extends CowContainerState {}

final class CowContainerShowDetailViewActionState extends CowContainerActionState {}
