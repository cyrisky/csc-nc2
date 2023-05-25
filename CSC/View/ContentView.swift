//
//  ContentView.swift
//  CSC
//
//  Created by Cris on 22/05/23.
//

import SwiftUI
import CoreML
//import OpenAIKit
//import OpenAISwift

struct ContentView: View {
    @State var messageText = ""
    @State var messages: [String] = ["Hello, I'm Ce! How are you feeling right now?"]
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Image("LogoCSC")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(.bottom, 6)
                }
                .frame(maxWidth: .infinity)
                .background(Color.mainBlue)
                
                HStack {
                    Spacer()
                    Button {
                        resetChat()
                    } label: {
                        Image(systemName: "gobackward")
                            .foregroundColor(.white)
                            .padding(.trailing, 16)
                }
                }
            }
            
            ScrollView{
                ForEach(messages, id: \.self) { message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.mainBlue)
                                .roundedCorner(14, corners: [.topLeft, .bottomLeft, .bottomRight])
                                .padding(.horizontal, 16)
                                .padding(.bottom, 2)
                        }.padding(.bottom, 8)
                            .padding(.leading, 42)
                    } else {
                        HStack {
                            Text(message)
                                .padding()
                                .background(.gray.opacity(0.25))
                                .roundedCorner(14, corners: [.topRight, .bottomLeft, .bottomRight])
                                .padding(.horizontal, 16)
                                .padding(.bottom, 2)
                            Spacer()
                        }.padding(.bottom, 8)
                            .padding(.trailing, 42)
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(.gray.opacity(0.05))
            
            HStack {
                TextField("Type something...", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
            }
            .padding(.horizontal, 16)
        }
    }
    
//    func GPTAPI() {
//
//        @frozen enum Constants {
//            static let key = "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"
//        }
//
////        var client: OpenAISwift?
////
////        func setup() {
////            client = OpenAISwift(authToken: Constants.key)
////        }
//
//        func getResponse(input: String,
//                                completion: @escaping (Result<String, Error>) -> Void) {
//            let prompt = "User: \(input)\nAI:"
//            client?.sendCompletion(
//                with: prompt,
//                completionHandler: { result in
//                switch result {
//                case .success(let model):
//                    let output = model.choices?.first?.text ?? ""
//                    completion(.success(output))
//                case .failure(let error):
//                    completion(.failure(error))
//                }
//            })
//        }
//    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                let model = CeritaSamaCe()

                guard let input = try? CeritaSamaCeInput(text: message) else {
                    return
                }
                
                if let prediction = try? model.prediction(input: input) {
                    let classification = prediction.label
                        
                        let chatResponse = getChatResponses(message: classification)
                        messages.append(chatResponse)
                    
//                    CSC.GPTAPI.shared.getResponse(input: message) { result in
//                        switch result {
//                        case .success(let chatResponse):
//                            messages.append(chatResponse)
//                        case .failure(let error):
//                            print(error)
//                        }
//                    }
                    
                }
            }
        }
    }

    
    func resetChat() {
        withAnimation {
            messages = ["Hello, I'm Ce! How can I help you?"]
            messageText = ""
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
