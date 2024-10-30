part of 'navigator_cubit.dart';

@immutable
sealed class NavigatorMainState {}

final class NavigatorInitial extends NavigatorMainState {}

final class NavigatorActionState extends NavigatorMainState {}

final class NavigatorGoToDetailState extends NavigatorActionState {}
