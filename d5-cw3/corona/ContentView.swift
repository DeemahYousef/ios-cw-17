//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل

var people = [
    userCovidInfo(fullName: "Joud", area:  "اليرموك", numberOfDoses: 0),
    userCovidInfo(fullName: "Fatmah", area: "قرطبه", numberOfDoses: 3),
    userCovidInfo(fullName: "Deemah", area: "الجهراء", numberOfDoses: 2)
]
struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                List(people,id:\.id){ i in
              // الحالة الثالثة
                      // الاسم
                     Text("Name: \(i.fullName)")
                      // المنطقة
                     Text("Area: \(i.area)")
          // عدد الجرعات
                     Text("Number of Doses: \(i.numberOfDoses)")
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






