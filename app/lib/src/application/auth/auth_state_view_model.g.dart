/*
 * Copyright 2020 Pedro Massango. All rights reserved.
 * Created by Pedro Massango on 1/7/2020.
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStateViewModel on _AuthStateViewModelBase, Store {
  final _$isLoggedInAtom = Atom(name: '_AuthStateViewModelBase.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  final _$authFailureAtom = Atom(name: '_AuthStateViewModelBase.authFailure');

  @override
  AuthFailure get authFailure {
    _$authFailureAtom.reportRead();
    return super.authFailure;
  }

  @override
  set authFailure(AuthFailure value) {
    _$authFailureAtom.reportWrite(value, super.authFailure, () {
      super.authFailure = value;
    });
  }

  final _$firebaseUserIdentityAtom =
      Atom(name: '_AuthStateViewModelBase.firebaseUserIdentity');

  @override
  GoogleSignInAccount get firebaseUserIdentity {
    _$firebaseUserIdentityAtom.reportRead();
    return super.firebaseUserIdentity;
  }

  @override
  set firebaseUserIdentity(GoogleSignInAccount value) {
    _$firebaseUserIdentityAtom.reportWrite(value, super.firebaseUserIdentity,
        () {
      super.firebaseUserIdentity = value;
    });
  }

  final _$userFailureAtom = Atom(name: '_AuthStateViewModelBase.userFailure');

  @override
  UserFailure get userFailure {
    _$userFailureAtom.reportRead();
    return super.userFailure;
  }

  @override
  set userFailure(UserFailure value) {
    _$userFailureAtom.reportWrite(value, super.userFailure, () {
      super.userFailure = value;
    });
  }

  final _$userAtom = Atom(name: '_AuthStateViewModelBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$getFirebaseUserAsyncAction =
      AsyncAction('_AuthStateViewModelBase.getFirebaseUser');

  @override
  Future<dynamic> getFirebaseUser() {
    return _$getFirebaseUserAsyncAction.run(() => super.getFirebaseUser());
  }

  final _$loginWithGoogleAsyncAction =
      AsyncAction('_AuthStateViewModelBase.loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$loginWithGitHubAsyncAction =
      AsyncAction('_AuthStateViewModelBase.loginWithGitHub');

  @override
  Future<dynamic> loginWithGitHub() {
    return _$loginWithGitHubAsyncAction.run(() => super.loginWithGitHub());
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn},
authFailure: ${authFailure},
firebaseUserIdentity: ${firebaseUserIdentity},
userFailure: ${userFailure},
user: ${user}
    ''';
  }
}
