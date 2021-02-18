

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)  //SafeArea 까지 색을 채움
            VStack {
                HStack { //아이디
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Username",
                              text: $username)
                }   .padding()
                .background(Capsule().fill(Color.white))
                
                HStack {  //비밀번호
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    if showPassword {
                        TextField("Password", text: $password)
                    } else {
                        SecureField("Password", text: $password)  //보안텍스트
                    }
                      //눈버튼을 눌렀을때, showPassword가 true로 됨
                    Button(action: { self.showPassword.toggle()}) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.secondary)
                    }
                }   .padding()
                .background(Capsule().fill(Color.white))
            }   .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
