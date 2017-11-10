class QuestionController < ApplicationController
    
    def index
        @questions = Question.all
    end
    
    def show
        option = params[:u_name]
        @name = params[:name]
        @content = params[:content]
        if option == 'private' || option ==''
            @hidden = true
        else
            @hidden = false
        end
        Question.create(
            name: @name,
            content: @content,
            hidden: @hidden
        )
        redirect_to :back #뒤로 돌아가라
    end
    
    def sign_up
        
    end
    
    def sign_up_process
        @email = params[:email]
        @name = params[:name]
        @password = params[:password]
        User.create(
            email: @email,
            name: @name, 
            password: @password
        )
    end
    
    def login
    end
    
    def login_process
        @email = params[:email]
        @password = params[:password]
        @message = ""
        
        #유저 인증
        user = User.find_by(email: @email)   #user가 없다면 nil이 들어간다.
        #해당하는 이메일을 가진 유저가 있다면 비밀번호 확인
        if user
            if user.password == @password
                session[:user_email] = user.email
                redirect_to '/'
            else
                @message = "비밀번호를 확인해주세요"
            end
        else
            @message = "존재하지 않는 사용자 입니다"
        end
    end
    
    def logout
        session.clear
        redirect_to '/'
    end
end
