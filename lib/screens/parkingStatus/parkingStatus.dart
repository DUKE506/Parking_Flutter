import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/providers/parkingCars_provider.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/customTabBar.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/parkingListWidget.dart';

class ParkingStatus extends ConsumerStatefulWidget {
  const ParkingStatus({super.key});

  @override
  ConsumerState<ParkingStatus> createState() => _ParkinStatusState();
}

class _ParkinStatusState extends ConsumerState<ParkingStatus> {
  //탭 인덱스
  late int _currentIndex;
  //탭 페이지 컨트롤러
  late final PageController _pageController;

  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose(); // 메모리 누수 방지
    super.dispose();
  }

  //탭 선택 함수
  void onTabSelected(int index) {
    print('인덱스 : ${index}');
    final tab = ParkingTab.values[index];
    ref.read(selectedTabProvider.notifier).state = tab;
    print('riverpod tab 상태 : ${ref.read(selectedTabProvider.notifier).state}');
    setState(() {
      isAnimating = true;
      _currentIndex = index;
      _pageController
          .animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.decelerate,
      )
          .then((_) {
        isAnimating = false;
      });
    });
  }

  //앱바
  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => {context.pop()},
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        '주차현황',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedTab = ref.watch(selectedTabProvider);
    final parkingData = ref.watch(filteredParkingProvider);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: Column(
          children: [
            SizedBox(height: 20),
            //탭바
            CustomTabBar(
              currentIndex: _currentIndex,
              onTabSelected: onTabSelected,
            ),
            SizedBox(height: 20),
            Expanded(
              child: PageView.builder(
                  onPageChanged: (int index) {
                    if (!isAnimating) {
                      // 애니메이션 중이 아닐 때만 인덱스 업데이트
                      setState(() {
                        _currentIndex = index;
                        ref.read(selectedTabProvider.notifier).state =
                            ParkingTab.values[index];
                      });
                    }
                  },
                  controller: _pageController,
                  itemCount: ParkingTab.values.length,
                  itemBuilder: (context, index) {
                    return ParkingListWidget(datas: parkingData);
                  }),
            )
          ],
        ));
  }
}
