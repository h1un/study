# study


------------
## WidGet 위젯
1. stateless  이전 상호작용의 어떤 값도 저장하지 않음 (형태가 없는 정적인 위젯)
2. stateful value 값을 지속적으로 추적 보존 (계속 움직이나 변화가 있는 위젯)
3. Inherited
------------

- MyApp() [stateless 함수]
    - MaterialApp()
        - title : [앱 이름],
        - home :  [앱이 정상적으로 실행되었을때 가장 먼저 화면에 보여주는 경로]
              - Scaffold()
                - appBar : AppBar()
                  - title : Text('[페이지 이름]')
                - body : 
                    - Padding() 
                    - Center() - [가로 중간]
                        - child : 
                            - Column() [모든 위젯을 세로로 배치]
                            - Row() [모든 위젯을 가로로 배치] 
                            - children :
                                - Text()
                                    style : TextStyle()
                                - Image()
                                - SizedBox() [빈공간]
                                - Icon()
                                - Button()

