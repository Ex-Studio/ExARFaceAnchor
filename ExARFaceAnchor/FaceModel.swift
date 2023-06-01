import ARKit

struct FaceModel {
    var description = ""

    mutating func update(faceAnchor: ARFaceAnchor) {
        // https://developer.apple.com/documentation/arkit/arfaceanchor

        description = faceAnchor.description
    }
}
