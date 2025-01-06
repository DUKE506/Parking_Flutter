import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/repository/parking/parking_repository.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/customTabBar.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/parkingListWidget.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/tabBar.dart';

class ParkingStatus extends StatefulWidget {
  const ParkingStatus({super.key});

  @override
  State<ParkingStatus> createState() => _ParkinStatusState();
}

class _ParkinStatusState extends State<ParkingStatus> {
  late int _currentIndex;
  late final PageController _pageController;
  late ParkingRepository parkingRepository;
  bool isAnimating = false;
  // 각 탭별 데이터를 저장할 Map
  final Map<int, List<Map<String, dynamic>>> _cachedData = {};

  final List<String> _types = ['All', 'RESIDENT', 'VISIT', 'OUTSIDER'];

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

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    parkingRepository = ParkingRepository();
    _preloadData();
  }

  Future<void> _preloadData() async {
    final allData = await parkingRepository.getParkigList('parking');
    setState(() {
      _cachedData[0] = allData;
      for (int i = 1; i < _types.length; i++) {
        _cachedData[i] =
            allData.where((data) => data['type'] == _types[i]).toList();
      }
    });
  }

  //탭 선택 함수
  void onTabSelected(int index) {
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

  //애빠
  PreferredSizeWidget _appBar() {
    return AppBar(
      // backgroundColor: const Color(0xFFEEF2F5),
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
          color: const Color(0xff218FD3),
        ),
      ),
    );
  }

//주차 목록 데이터 조회
  Future<List<Map<String, dynamic>>> _loadParkingList(int index) async {
    final data = await parkingRepository.getParkigList('parking');
    if (index == 0) {
      return data;
    }
    return data.where((data) => data['type'] == _types[index]).toList();
  }

  Widget _dataList(int index) {
    final data = _cachedData[index];

    if (data == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return ParkingListWidget(pageNum: 5, datas: data!);
  }

  @override
  Widget build(BuildContext context) {
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
                      });
                    }
                  },
                  controller: _pageController,
                  itemCount: _types.length,
                  itemBuilder: (context, index) {
                    return _dataList(index);
                  }),
            )
          ],
        ));
  }
}
