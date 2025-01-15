//
//  ImageLoadingView.swift
//  NewsPaper
//
//  Created by Juan Pasache on 15/01/25.
//

import SwiftUI

public struct ImageLoadingView: View {
    var primaryColor: Color
    var photoUrl: String
    var painterError: String
    var contentMode: ContentMode
    
    @State private var image: UIImage? = nil  // Imagen descargada
    @State private var rotation: Double = 0.0
    @State private var trimValue: CGFloat = 0.0
    @State private var isLoading: Bool = true
    
    public init(
        primaryColor: Color = .red,
        photoUrl: String = "" ,
        painterError: String = "" ,
        contentMode: ContentMode = .fit
    ) {
        self.primaryColor = primaryColor
        self.photoUrl = photoUrl
        self.painterError = painterError
        self.contentMode = contentMode
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: trimValue)
                .stroke(primaryColor,lineWidth: 16)
                .rotationEffect(.degrees(rotation))
                .frame(width: 200, height: 200)
                .onAppear {
                    withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                    withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                        incrementTrimValue()
                    }
                }
            
            if let image = image {
                // Imagen descargada
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: 150, height: 150)
                    .cornerRadius(16)
            } else if !isLoading{
                // Imagen de error (si la descarga falla)
                if let errorImage = UIImage(named: painterError) {
                    Image(uiImage: errorImage)
                        .resizable()
                        .aspectRatio(contentMode: contentMode)
                }
            }
        }
        .onAppear {
            // Descargar la imagen
            downloadImage(from: photoUrl)
        }
    }
    
    private func incrementTrimValue() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if trimValue < 1.0 {
                trimValue += 0.005
            } else {
                trimValue = 0.0
            }
        }
    }
    
    private func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else {
            isLoading = false
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data, let downloadedImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = downloadedImage
                    self.isLoading = false
                }
            } else {
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }
        }.resume()
    }
}

#Preview {
    ImageLoadingView(
        photoUrl:"https://i.pinimg.com/originals/ff/5d/cf/ff5dcf573ee50569ca5d2c68852d7145.jpg"
    )
}
