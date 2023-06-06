import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pending_management/injection/injector.dart';
import 'package:pending_management/presentation/feature/profile/profile_presenter.dart';
import 'package:pending_management/presentation/feature/profile/profile_state.dart';
import 'package:pending_management/presentation/resources/resources.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _profilePresenter = injector.get<ProfilePresenter>();

  @override
  void initState() {
    super.initState();
    _profilePresenter.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.accent,
        title: BlocBuilder<ProfilePresenter, ProfileState>(
          bloc: _profilePresenter,
          builder: (context, state) {
            return Text(state.isLoading ? 'Profile' : 'Profile: ' + state.name);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [
                BlocBuilder<ProfilePresenter, ProfileState>(
                    bloc: _profilePresenter,
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const CircularProgressIndicator();
                      } else {
                        return Text('Hi ${state.name}!');
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
