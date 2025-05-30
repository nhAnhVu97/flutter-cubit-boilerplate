import 'package:bloc_test/bloc_test.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late MockSharedPreferences mockPrefs;
  late AuthCubit authCubit;

  setUp(() {
    mockPrefs = MockSharedPreferences();
    authCubit = AuthCubit(pref: mockPrefs);
  });

  tearDown(() {
    authCubit.close();
  });

  group('AuthCubit', () {
    test('initial state is AuthState.initial', () {
      expect(authCubit.state, const AuthState.initial());
    });

    blocTest<AuthCubit, AuthState>(
      'emits initial state when created',
      build: () => authCubit,
      expect: () => const [AuthState.initial()],
    );
  });
}
