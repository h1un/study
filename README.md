# study

------------

## WidGet 위젯

1. stateless 이전 상호작용의 어떤 값도 저장하지 않음 (형태가 없는 정적인 위젯)
2. stateful value 값을 지속적으로 추적 보존 (계속 움직이나 변화가 있는 위젯)
3. Inherited

------------
    - MyApp()
        - MaterialApp()
            title : 앱이름
            home :
            - Scaffold()
                appBar :
                - AppBar()
                    title : Text('페이지이름')
                    leading : IconButton( icon : Icons.아이콘) - 앱바 타이틀 왼쪽 — Drawar 는 새탭
                    action : IconButton(icon : Icons.아이콘)- 앱바 타이틀 오른쪽
                drawer :
                - Drawer() - 앱바 타이틀 왼쪽의 버튼을 클릭했을때의 새탭
                    child :
                    - ListView()
                        children : []
                        - UserAccountsDrawerHeader() - 계정 정보
                            currentAccountPicture : - 로그인 계정 이미지
                                -CircleAvatar() : 이미지 동그랗게
                            otherAccountsPictures : [] - 다른 로그인 계정 이미지
                            accountName : Text('이름')
                            accountEmail : Text('이메일')
                            decoration :
                            - BoxDecoration() -계정정보 박스 꾸미기
                                color :
                                borderRadius : BorderRadius.only(
                                  bottomRight: Radius.circular(40)
                                )
                        - ListTitle() - 메뉴
                            leading: Icons.아이콘 - 메뉴 왼쪽
                            trailing : Icons.아이콘 - 메뉴 오른쪽
                body :
                - Padding()
                - Center() - 중앙 정렬
                    child :
                    - Column() - 세로 정렬
                    - Row() - 가로 정렬
                        chlidren : []
                        - Text()
                            style :  TextStyle()
                        - Image()
                        - CircleAvatar()
                            backgraoundImage : AssetImage('경로')
                            radius : [숫자]
                        - SizeBox() - 빈박스
                        - Button()
                        - Divder() - 선
                            thickness : [숫자] - 두께
                            endIndent : [숫자] - 끝에서부터늬 padding
----

## 이미지 넣는법

pubspec.yaml <br>

    flutter : <br>
        <tab>assets : <br>
            - 이미지경로/파일
