import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../long_term/presentation/screens/long_term_screen.dart';
import '../../../medium_term/presentation/screens/medium_term_screen.dart';
import '../../../my_activate_bots/presentation/screens/my_activate_bots_screen.dart';
import '../../../my_deactivate_bots/presentation/screens/my_deactivate_bots_screen.dart';
import '../../../my_wallet/my_wallet_screen.dart';
import '../../../st_wallet/presentation/screens/st_wallet_screen.dart';
import '../../../trade_bot/presentation/screens/trade_bot_screen.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerInitial());

 static DrawerCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    const HomeScreen(),
    const TradeBotScreen(),
    const MyActivateBotsScreen(),
    const MyDeActivateBotsScreen(),
    MyWalletScreen(),
    const StWalletScreen(),
    const MediumTermScreen(),
    const LongTermScreen(),
  ];

  final List<String> drawerTitles = [
    'Dashboard',
    'Trade Bot',
    'My Activate Bots',
    'My DeActivate Bots',
    'My Wallet',
    'ST Wallet',
    'Medium Term',
    'Long Term',
    'Payment Gateway',
    'Reports',
  ];

  int currentIndex = 0;

  void changeDrawerIndex(index){
       currentIndex = index;
       emit(ChangeDrawerIndexState());
  }


}
