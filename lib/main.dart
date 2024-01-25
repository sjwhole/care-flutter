import 'package:care/providers/jwt_provider.dart';
import 'package:care/screens/home_screen.dart';
import 'package:care/screens/shopping_screen.dart';
import 'package:care/screens/subscription_screen.dart';
import 'package:care/utils/jwt.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';
import 'package:provider/provider.dart';

const String NATIVE_APP_KEY = "bbb5b25bafb2d2118554d3540d27ce34";
const String JAVASCRIPT_APP_KEY = "cef5d7065ff16ea88cf5ea3af6b7c7d0";

void main() async {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  // runApp() 호출 전 Flutter SDK 초기화
  KakaoSdk.init(
    nativeAppKey: NATIVE_APP_KEY,
    javaScriptAppKey: JAVASCRIPT_APP_KEY,
  );

  String? jwt = await loadJWTFromStorage();
  print(jwt);

  runApp(
    ChangeNotifierProvider(
      create: (context) => JwtProvider(jwt),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 선택된 페이지의 인덱스 넘버 초기화
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pages = [
      //The individual tabs.
      HomeScreen(),
      ShoppingScreen(),
      // TransformScreen(),
      SubscriptionScreen(),
    ];
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // body: IndexedStack(
          //   index: _selectedIndex,
          //   children: <Widget>[
          //     HomeScreen(),
          //     ShoppingScreen(),
          //     // TransformScreen(),
          //     SubscriptionScreen(),
          //     // ReportPage()
          //   ],
          // ),
          body: PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              elevation: 16,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: '쇼핑',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.note),
                  label: '리포트',
                ),
              ],
              currentIndex: _selectedIndex, // 지정 인덱스로 이동
              // selectedItemColor: Colors.lightGreen,
              onTap: _onItemTapped, // 선언했던 onItemTapped
            ),
          ),
        ),
      ),
    );
  }
}
