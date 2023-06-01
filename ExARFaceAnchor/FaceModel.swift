import ARKit

struct FaceModel {
    var transform = simd_float4x4()

    var console = ""
    mutating func update(faceAnchor: ARFaceAnchor) {
        // https://developer.apple.com/documentation/arkit/arfaceanchor

        transform = faceAnchor.transform
        console = "\(faceAnchor.transform)"
    }
}
