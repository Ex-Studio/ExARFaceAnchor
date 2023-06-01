import ARKit

struct FaceModel {
    // TODO: add state to indicate whether a face appears in the front camera view

    // MARK: - Debug

    var console = ""

    // MARK: - Data

    var transform = simd_float4x4()

    var leftEyeTransform = simd_float4x4()
    var rightEyeTransform = simd_float4x4()
    var lookAtPoint = simd_float3()

    // https://developer.apple.com/documentation/arkit/arfacegeometry
    var geometry_vertices: [vector_float3] = []
    var geometry_textureCoordinates: [vector_float2] = []
    var geometry_triangleCount = 0
    var geometry_triangleIndices: [Int16] = []

    // https://developer.apple.com/documentation/arkit/arfaceanchor/blendshapelocation
    var blendShapes: [ARFaceAnchor.BlendShapeLocation: NSNumber] = [:]

    // MARK: - update

    // https://developer.apple.com/documentation/arkit/arfaceanchor
    mutating func update(faceAnchor: ARFaceAnchor) {
        console = "\(geometry_vertices.count) \(geometry_textureCoordinates.count) \(geometry_triangleCount) \(geometry_triangleIndices.count)\n\(String(describing: blendShapes[.jawOpen]))"

        transform = faceAnchor.transform

        leftEyeTransform = faceAnchor.leftEyeTransform
        rightEyeTransform = faceAnchor.rightEyeTransform
        lookAtPoint = faceAnchor.lookAtPoint

        geometry_vertices = faceAnchor.geometry.vertices
        geometry_textureCoordinates = faceAnchor.geometry.textureCoordinates
        geometry_triangleCount = faceAnchor.geometry.triangleCount
        geometry_triangleIndices = faceAnchor.geometry.triangleIndices

        blendShapes = faceAnchor.blendShapes
    }
}
