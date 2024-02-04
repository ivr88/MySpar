import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    
    @State private var favorite = "Шт"
    var favorites = ["Шт", "Кг"]
    
    var starImage = Image(systemName: "star.fill")
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading) {
                    Text("Цена по карте")
                        .fontWeight(.regular)
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .accentColor(.green.opacity(0.75))
                        .clipShape(.rect(cornerRadius: 5.0))
                       
                    Image("Липа")
                        .resizable()
                        .scaledToFit()
                        
                    HStack {
                        starImage
                            .foregroundColor(.yellow)
                        Text("4.1")
                        Rectangle()
                            
                            .frame(width: 2, height: 20)
                            .foregroundColor(.gray)
                        Text("19 отзывов")
                            .foregroundColor(.gray)
                            
                        Spacer()
                        
                        ZStack {
                            Image("Скидка")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            
                            Text("-5%")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                        }
                    }
                    
                    Text("Добавка \"Липа\" к чаю 200 г")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("Испания")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .clipShape(Circle())

                        Text("Испания, Риоха")
                    }
                    .padding()
                    
                    Text("Описание")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    Text("Флавоноиды липового цвета обладают противоспалительным действием, способствует укреплению стенки сосудов.")
                        .padding(.bottom, 10)
                    
                    Text("Основые характеристики")
                        .font(.headline)
           
                        HStack {
                            Text("Производство")
                            Spacer()
                            Text(".....")
                            Spacer()
                            Text("Россия, Краснодарский край")
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.vertical, 5)
                    
                        HStack {
                            Text("Энергетическая ценность, ккал/100г")
                            Spacer()
                            Text("...............")
                            Spacer()
                            Text("25 кКал, 105 кДж")
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.vertical, 5)
                        
                        HStack {
                            Text("Жиры/100г")
                            Spacer()
                            Text("..............................")
                            Spacer()
                            Text("0,1г")
                        }
                        .padding(.vertical, 5)
                    
                        HStack {
                            Text("Белки/100г")
                            Spacer()
                            Text("..............................")
                            Spacer()
                            Text("1,3г")
                        }
                        .padding(.vertical, 5)
                    
                        HStack {
                            Text("Углеводы/100г")
                            Spacer()
                            Text("..............................")
                            Spacer()
                            Text("3,3г")
                        }
                        .padding(.vertical, 5)
                    
                    Button {
//                        переход ко всем характеристикам
                    } label: {
                        Text ("Все характеристики")
                    }
                    .padding(.vertical)
                    .font(.headline)
                    .foregroundColor(.green)
                    
                    HStack {
                        Text("Отзывы")
                            .font(.headline)
                        
                        Spacer()
                        
                        Button {
    //                        переход ко всем отзывам
                        } label: {
                            Text ("Все 152")
                        }
                        .font(.headline)
                        .foregroundColor(.green)
                    }
                
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (alignment: .center) {
                            VStack (alignment: .leading) {
                                Text("Александр В.")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                Text("7 мая 2021")
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 5)
                                HStack {
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.gray)
                                }
                                .padding(.bottom, 5)
                                
                                Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                            }
                            .padding(15)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 20))
                            .frame(width: 300)
                            .shadow(radius: 10)
                            
                            VStack (alignment: .leading) {
                                Text("Александр В.")
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                Text("7 мая 2021")
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 5)
                                HStack {
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.yellow)
                                    starImage
                                        .foregroundColor(.gray)
                                }
                                .padding(.bottom, 5)
                                
                                Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                            }
                            .padding(15)
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 20))
                            .frame(width: 300)
                            .shadow(radius: 10)
                        }
                        .padding(5)
                    }
                    
                    Button {
//                        переход на страницу добавления отзыва
                    } label: {
                        Text ("Оставить отзыв")
                    }
                    .padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                    .font(.headline)
                    .foregroundColor(.green)
                    .background(Capsule().stroke(.green, lineWidth: 2))
                    
                }
                .padding(.horizontal, 20)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack (alignment: .bottom) {
                            Button("List", systemImage: "list.bullet.rectangle.portrait") {
                            }
                            .padding(5
                            )
                            Button("Share", systemImage: "square.and.arrow.up") {
                            }
                            .padding(5)
                            
                            Button("Heart", systemImage: "heart") {
                            }
                        }
                        .foregroundColor(.green)
                        .font(.headline)
                    }
                }
            }
        }
        
        VStack {
            Picker("Favorite", selection: $favorite) {
                ForEach(favorites, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 10)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("55.9 ₽/кг")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("159,0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                
                Spacer()
                
                Group {
                    HStack {
                        Button {
//                            уменьшить колество продуктов
                        } label: {
                            Text("-")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.trailing, 20)
                        }
                        
                        VStack {
                            Text("1 шт")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("120.0₽")
                                .font(.subheadline)
                        }
                        .padding(.trailing, 20)
                        
                        Button {
//                            увеличить колество продуктов
                        } label: {
                            Text("+")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    }
                }
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(Color.green)
                .clipShape(.rect(cornerRadius: 50))
                .foregroundColor(.white)
            }
            .padding()
            
            HStack {
                Button {
                    self.selected = 0
                } label: {
                    VStack {
                        Image("Главная")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Главная")
                            .font(.subheadline)
                    }
                }
                .accentColor (self.selected == 0 ? .green : .black)
                
                Spacer(minLength: 12)
                
                Button {
                    self.selected = 1
                } label: {
                    VStack {
                        Image("Каталог")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Каталог")
                            .font(.subheadline)
                    }
                }
                .accentColor (self.selected == 1 ? .green : .black)
                
                Spacer(minLength: 12)
                
                Button {
                    self.selected = 2
                } label: {
                    VStack {
                        Image("Корзина")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Корзина")
                            .font(.subheadline)
                    }
                }
                .accentColor(self.selected == 2 ? .green : .black)
                
                Spacer(minLength: 12)
                
                Button {
                    self.selected = 3
                } label: {
                    VStack {
                        Image("Профиль")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Профиль")
                            .font(.subheadline)
                    }
                }
                .accentColor(self.selected == 3 ? .green : .black)
            }
            .padding()
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    ContentView()
}
