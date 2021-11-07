# study

------------

## WidGet 위젯

1. stateless 이전 상호작용의 어떤 값도 저장하지 않음 (형태가 없는 정적인 위젯)
2. stateful value 값을 지속적으로 추적 보존 (계속 움직이나 변화가 있는 위젯)
3. Inherited

------------

- MyApp()
    - MaterialApp()
      title : [앱이름] <br>
      home :
        - Scaffold() <br>
          appBar :
            - AppBar() <br>
              title : Text('[페이지이름]') <br>
              leading : IconButton() [앱바 타이틀 왼쪽]<br>
              action : IconButton() [앱바 타이틀 오른쪽]
              - .
                icon : Icon(Icons.[아이콘])
                onPressed : [함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을때 일어나는 이벤트]
              body :
                - Padding()
                - Center() - 중앙 정렬
                - Column() - 세로 정렬
                - Row() - 가로 정렬
                - Stack() - 위젯을 쌓아올릴때 <br>
                  child :
                    - .<br>
                      chlidren :
                        - Text() <br>
                          style :  TextStyle()
                        - Image()
                        - CircleAvatar() <br>
                          backgraoundImage : AssetImage('[경로]') <br>
                          radius : [숫자] <br>
                        - SizeBox() - 빈박스
                        - Button()
                        - Divder() - 선 <br>
                          thickness : [숫자] - 두께 <br>
                          endIndent : [숫자] - 끝에서부터늬 padding <br>

----

## 이미지 넣는법

pubspec.yaml <br>

    flutter : <br>
        <tab>assets : <br>
            - 이미지경로/파일
