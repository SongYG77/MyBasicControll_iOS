# MyBasicControll_iOS

https://www.inflearn.com/course/ios13-%EC%95%B1%EA%B0%9C%EB%B0%9C-%ED%8F%AC%ED%8F%B4/dashboard


기본 프로젝트 구성.

AppDelegate.swift -> 이건 가장 처음으로 실행되는 콛,
 - func application 부분을 보면 가장 처음 실행되는 부분이라 저 부분에서 초기화가 필요하면 코드 추가할 수있다.


SceneDelegate.swift -> 이건 swift UI를 지원하기 위한 브릿지 역할을 하는 class 들이 모여있는부분(함수들)  swift UI가 ios13부터 지원이라 아직 사용은 좀.


ViewController.swift -> 스토리보드 UI에 대응하기 위한 컨트롤 소스.
 - 한 화면에는 기기에 대응하기 위한 스토리보드 하나와 뷰 컨트롤러 소스 한개라고 생각하면 된다.

Main.storyboard -> 이게 이제 화면을 구성하는 스토리보드.
 - 찬찬히 알아나갈예정, 화면 옆에 -> 모양의 화살표는 진입점이다.
 - safe area는 어떤 기기에서든 보이는 안전한 영역이다.

Asset -> 이미지를 관리.

런치 스크린 -> 나중에

Info.plist -> 환경 구성 파일.


AppDelegate 파일 //프로젝트의 시작점 소스

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //앱이 맨처음 구동되었을때 실행되는 함수.
        //여기에 필요하면 초기화 코드들을 넣어줄 수 있다.
        
        //중요한 부분
        return true
    }

SceneDelegate  파일

//새로 생긴 파일 xcode 11부터
//swift Ui 라고 새로운 ui 항목이 발표되고 추가
//swift ui를 지원하기 위한 class(브릿지 역할을 한다)
//swift ui가 ios13부터 지원하기 때문에 아직은 시기상조 같다.


나머지의 설명은 코드에 있음.

