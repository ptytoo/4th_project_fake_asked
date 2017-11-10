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
  



asked

1. question (질문자 이름, 내용)
    controller : question
    action : index, show
        index.erb : form 을 통해서 질문을 받는다,   익명으로 할 수도 있고 내 이름을 쓸수도 있음
        show.erb : 입력된 질문을 보여준다.
    model : 
        name(질문자 이름)
        content(내용)
        1. rails g model (모델명)
        2. migration 파일 작성
        3. rake db:migrate