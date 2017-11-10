Asciify

- 1. 사용자로부터 입력을 받는다.

- 1. 입력받은 것을 바탕으로 ascii art를 생성해주는 서비스를 만든다.

    '/'(root page) -> asciify#index
    controller -> asciify
    # action -> index, result, show
    asciify#index #사용자의 input을 받는다. 사용자로부터 폰트를 선택받아 같이 넘겨줌,show로 넘겨준다.
    asciify#show  # artii gem을 활용하여, 넘어온 input을 ascii art로 만들어 보여준다.
    
    a = Artii:Base.new(font: '사용할 폰트')
    a.asciify('만들 문자열')
    
    #폰트 종류 : 'standard' 'big' 'thin'

---

 Fake Asked

- 회원가입 == database에 유저 정보를 저장하는것
  - 1. User 테이블 생성 (User model)
    2. User 정보를 저장 (회원 정보를 받아, DB에 저장)
- 로그인 == session 유저 정보를 검증을 거친 후 저장하는 것
  - 1. User 정보를 받는다.
    2. 받은 User 정보와 DB의 User 정보가 일치하는지 확인
    3. if 일치, session에 유저 정보 넣는다.
       	session[:email] = 유저정보
       Else, 이유를 말해주고 로그인 안함
    4. 로그아웃 
       session.clear
