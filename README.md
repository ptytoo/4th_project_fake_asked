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