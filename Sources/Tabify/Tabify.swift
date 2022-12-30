import SwiftUI

public struct Tabify<Item: TabifyItem, Content: View>: View {
    
    @Binding private var visibility: Visibility
    
    @State private var items: [Item]
                                                        
    private let content: Content
    private let selectedItem: SelectionManager<Item>
    
    var itemStyle: GenericItemStyle
    var barStyle: GenericBarStyle
    
    public init(
        selectedItem: Binding<Item>,
        visibility: Binding<Visibility> = .constant(.visible),
        @ViewBuilder content: () -> Content
    ) {
        self.itemStyle = .init(itemStyle: DefaultItemStyle())
        self.barStyle = .init(barStyle: DefaultBarStyle())
        
        self.selectedItem = .init(selection: selectedItem)
        self.content = content()
        
        self._items = .init(initialValue: .init())
        self._visibility = visibility
    }
    
    private var tabItems: some View {
        HStack {
            ForEach(self.items, id: \.self) { item in
                self.itemStyle.item(icon: item.icon, title: item.title, isSelected: self.selectedItem.selection == item)
                    .onTapGesture { [item] in
                        self.selectedItem.selection = item
                                                self.selectedItem.objectWillChange.send()
                    }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    public var body: some View {
        ZStack {
            self.content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .environmentObject(self.selectedItem)
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    self.barStyle.bar(with: geometry) {
                        .init(self.tabItems)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .visibility(self.visibility)
            }
        }
        .onPreferenceChange(CustomPreferenceKey.self) { value in
            self.items = value
        }
    }
}
