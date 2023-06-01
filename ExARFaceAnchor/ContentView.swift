import RealityKit
import SwiftUI

struct ContentView: View {
    @ObservedObject var frontCameraViewController = FrontCameraViewController()

    var body: some View {
        GeometryReader { proxy in
            HStack(alignment: .top) {
                FrontCameraView(frontCameraViewController: frontCameraViewController)
                    .cornerRadius(16)
                    .padding(8)
                    .frame(width: 1 / 4 * proxy.size.width, height: 1 / 4 * proxy.size.height)
                FaceDataView(faceModel: frontCameraViewController.faceModel)
            }
        }
    }
}

struct FrontCameraView: UIViewRepresentable {
    var frontCameraViewController: FrontCameraViewController

    func makeUIView(context _: Context) -> ARView {
        return frontCameraViewController.view
    }

    func updateUIView(_: ARView, context _: Context) {}
}

struct FaceDataView: View {
    var faceModel: FaceModel

    var body: some View {
        return VStack {
            Text(faceModel.description)
            Spacer()
            Text(faceModel.description)
                .lineLimit(8)
        }
    }
}
