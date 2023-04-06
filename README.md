# swift-drawingapp

세번째 프로젝트 - 드로잉 앱

## 3.27 - 3.28

### 학습 List

- MVC
- OOP
- iOS RunLoop
- Protocol 역할과 표현 방식

### 구현 List

- OOP로 사각형 View를 표현 하는 Model Class를 설계
- 고유ID, 크기(width, Height), 위치(X,Y), 배경색 (R, G, B), 투명도 (Alpha)는 필수 속성
- 고유ID는 3-3-3 자리 형태의 랜덤한 값
- 크기와 위치는 Double 타입을 기준으로 처리하되 필요하면 타입을 선언한다
- 배경색은 RGB 0 ~ 255 사이 값으로 처리한다
- 투명도는 1 ~ 10 단계로 표현한다
- Model Class 파일은 Core Graphics나 UiKit을 Import하지 않고 독립적인 타입으로 선언한다
- Model Class의 출력을 위해 CustomStringConvertible 프로토콜을 추가하고 구현한다
- 모델 클래스의 생성자에서 랜덤값을 처리하는 게 아니라, 랜덤값을 생성해서 모델 생성하는 초기값을 넘겨주는 팩토리를 구현
