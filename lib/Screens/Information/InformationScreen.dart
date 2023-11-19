import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatelessWidget {
  InformationScreen({super.key});

  final List<String> entry = <String>[
    "귀어귀촌 캐릭터 '귀어해'를 소개합니다.",
    "[공지] 2023년도 경상남도 귀어학교 제 3기 심화교육(선내·외기) 교육생 모집 공고",
    "[공지] 창원시 어촌에서 살아보기(귀어인의 집) 입주희망자 모집",
    "2023년 정기교육(주말) 6기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 25일 토요일)",
    "2023년 정기교육(평일) 15기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 24일 금요일)",
    "2023년 귀어귀촌 정기교육 14기(평일, 11.10.) 교육안내(접속방법 등 안내)",
    "2023년 귀어귀촌 정기교육 13기(평일, 11.9.) 교육안내(접속방법 등 안내)",
    "2023 도시민 전남 어민 되다 (2주살이) 참가자 모집 (모집완료)",
    "2023년 귀어귀촌 체험프로그램 8차 참가자 모집 아쿠아포닉스",
    "귀어귀촌 정기교육(주말) 5기 교육 안내",
    "귀어귀촌 정기교육(평일) 12기 교육 안내",
    "2023년 귀어업인 어업체험 프로그램(심화) 어선어업II 분야 교육생 추가 모집",
    "2023년도 경상남도 귀어학교 제 2기 심화교육(선내외기) 교육생 모집 공고",
  ];

  final List<String> homePage = <String>[
    "귀어귀촌 종합센터",
    "경상남도 귀어귀촌 종합센터",
    "경상남도 귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "전남 귀어귀촌 종합센터",
    "경기도 귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "경상남도 귀어귀촌 종합센터",
    "경상남도 귀어귀촌 종합센터",
  ];

  final List<String> homePageURL = <String>[
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.gnsealife.kr/sealife/board/view.do?mId=56&brdIdx=130",
    "https://www.gnsealife.kr/sealife/board/view.do?mId=56&brdIdx=129",
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.sealife.go.kr/board/notice/view.do",
    "http://jnsealife.or.kr/ko/110/view?SEQ=36&page=1",
    "https://ggsealife.co.kr/kr/customer/notice/view/186/page/0",
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.sealife.go.kr/board/notice/view.do",
    "https://www.gnsealife.kr/sealife/board/view.do?mId=56&brdIdx=128",
    "https://www.gnsealife.kr/sealife/board/view.do?mId=56&brdIdx=127",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 54, 122),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: entry.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                String url = "${homePageURL[index]}";
                await launchUrl(Uri.parse(url));
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 10, top: 15, bottom: 15),
                    height: 125,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(
                                  '${entry[index]}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 2.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                '${homePage[index]}',
                                style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 2.0,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/fish-bowl.png',
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          offset: Offset(0, 3),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                ],
              ),
            );
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 9, 54, 122),
              const Color.fromARGB(238, 0, 3, 10),
            ],
          ),
        ),
      ),
    );
  }
}
