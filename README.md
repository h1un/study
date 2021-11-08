# study
https://flutter.dev/
플러터 홈페이지
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
                        mainAxisAlignemt : MainAxisAlignmetn. - 정렬
                        crossAxisAlignemt : 
                        verticalDirextion : VerticalDirection.down - 밑에서부터 정렬해서 밑에서부터 표시
                                            VerticalDirection.up - 위에서부터 정렬해서 위에서 표시
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
----

## BuildContext
- widget tree 에서 현재 widget의 위치를 알 수 있는 정보
- 이 BuildContext는 stateless 위젯이나 state 빌드 메서드에 의해서 리턴 된 위젯의 부모가 된다

### Scaffold.of(context) method
- 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라
//비슷한거 Something.of()
        Theme.of()
 
## Navigator
###Route
- 하나의 페이지
###Stack
Navigator.push( context , MaterialPageRoute(builder: (context) => 이동 페이지()) )
###
빌더는 일종의 안전장치 <br>
빌더에서 제공되는 컨텍스트는 자동으로 할당됨 사용할 필요가 없으면 사용안해도 됨 <br>
Navigator.push( context , MaterialPageRoute(builder: (_) => 이동 페이지()) ) 로 사용가능

###
appBar 를 생성하먄 자동적으로 뒤로가기 버튼이 만들어지지만 draw를 사용하면 직접 만들어줘야함 
