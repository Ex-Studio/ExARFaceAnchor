import ARKit

struct FaceModel {
    var transform = simd_float4x4()
    var leftEyeTransform = simd_float4x4()
    var rightEyeTransform = simd_float4x4()
    var lookAtPoint = simd_float3()

    var console = ""

    // https://developer.apple.com/documentation/arkit/arfaceanchor
    mutating func update(faceAnchor: ARFaceAnchor) {
        transform = faceAnchor.transform
        leftEyeTransform = faceAnchor.leftEyeTransform
        rightEyeTransform = faceAnchor.rightEyeTransform
        lookAtPoint = faceAnchor.lookAtPoint
        console = "\(faceAnchor.transform)"
    }
}
