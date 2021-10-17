//
//  ContentView.swift
//  Rilakkuma
//
//  Created by 徐易中 on 2021/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack{

//            右耳朵
            Group{
                Circle()
                    .fill(Color(red: 191/255, green: 128/255, blue: 26/255))
                    .frame(width: 55, height: 55)
                    .position(x: 275, y:300)
                Circle()
                    .stroke(Color(red: 85/255, green: 62/255, blue: 26/255), lineWidth: 3)
                    .frame(width: 55, height: 55)
                    .position(x: 275, y:300)

                Path{path in
                    path.addArc(center: CGPoint(x: 300, y: 325), radius: 33,startAngle:.degrees(-90), endAngle:.degrees(180) , clockwise: true)
                }
                .stroke(lineWidth: 3)
                Path{path in
                    path.addArc(center: CGPoint(x: 300, y: 325), radius: 33,startAngle:.degrees(-90), endAngle:.degrees(180) , clockwise: true)
                }
                .fill(Color(red:241/255, green: 200/255, blue: 29/155))

//
                Path{path in
                    path.addArc(center: CGPoint(x: 269, y: 295), radius: 30,startAngle:.degrees(-5), endAngle:.degrees(95) , clockwise: false)
                }
                .fill(Color(red:241/255, green: 200/255, blue: 29/155))
            }
//            左耳
            Group{
                Circle()
                    .fill(Color(red: 191/255, green: 128/255, blue: 26/255))
                    .frame(width: 55, height: 55)
                    .position(x: 125, y:300)
                Circle()
                    .stroke(Color(red: 85/255, green: 62/255, blue: 26/255), lineWidth: 3)
                    .frame(width: 55, height: 55)
                    .position(x: 125, y:300)

                Path{path in
                    path.addArc(center: CGPoint(x: 100, y: 325), radius: 33,startAngle:.degrees(0), endAngle:.degrees(-90) , clockwise: true)
                }
                .stroke(lineWidth: 3)
                Path{path in
                    path.addArc(center: CGPoint(x: 100, y: 325), radius: 33,startAngle:.degrees(0), endAngle:.degrees(-90) , clockwise: true)
//                        .rotationEffect
                }
                .fill(Color(red:241/255, green: 200/255, blue: 29/155))

//
                Path{path in
                    path.addArc(center: CGPoint(x: 130, y: 295), radius: 30,startAngle:.degrees(85), endAngle:.degrees(187) , clockwise: false)
                }
                .fill(Color(red:241/255, green: 200/255, blue: 29/155))
            }
//            臉
            Capsule()
                .fill(Color(red: 191/255, green: 128/255, blue: 26/255))
                .offset(x: 0, y:-10)
                .frame(width: 185, height: 160)
            Capsule()
                .stroke(Color(red: 85/255, green: 62/255, blue: 26/255), lineWidth: 3)
                .offset(x: 0, y:-10)
                .frame(width: 185, height: 160)
//            眼睛
            Circle()
                .fill(Color(red: 86/255, green: 60/255, blue: 48/255))
                .frame(width: 20, height: 20)
                .offset(x: 37, y: -2)
            Circle()
                .fill(Color(red: 86/255, green: 60/255, blue: 48/255))
                .frame(width: 20, height: 20)
                .offset(x: -37, y: -2)
//            鼻子
            Capsule()
                .fill(Color.white)
                .offset(x: 0, y:16)
                .frame(width: 40, height: 30)
            Circle()
                .fill(Color(red: 86/255, green: 60/255, blue: 48/255))
                .frame(width: 13, height: 13)
                .offset(x: 0, y:10)
            Path{ path in
                path.move(to: CGPoint(x: 195, y: 390))
                path.addQuadCurve(to: CGPoint(x: 185, y: 400), control: CGPoint(x: 195 ,y: 410))
                    
            }
            .stroke(Color(red: 86/255, green: 60/255, blue: 48/255), lineWidth: 5)
            Path{ path in
                path.move(to: CGPoint(x: 195, y: 390))
                path.addQuadCurve(to: CGPoint(x: 205, y: 400), control: CGPoint(x: 195 ,y: 410))
                    
            }
            .stroke(Color(red: 86/255, green: 60/255, blue: 48/255), lineWidth: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
