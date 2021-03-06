import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  final String? email;
  final int id;
  final String? name;
  final String? photo;

  /// Represents a non-logged in user
  static const empty = User(id: -1);

  /// Convenience getters to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
