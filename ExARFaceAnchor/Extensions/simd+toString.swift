import simd

extension simd_float4x4 {
    var rows: [simd_float4] {
        return [simd_float4(self[0][0], self[0][1], self[0][2], self[0][3]),
                simd_float4(self[1][0], self[1][1], self[1][2], self[1][3]),
                simd_float4(self[2][0], self[2][1], self[2][2], self[2][3]),
                simd_float4(self[3][0], self[3][1], self[3][2], self[3][3])]
    }

    var toString: String {
        return "\(self.rows[0].toString)\n\(self.rows[1].toString)\n\(self.rows[2].toString)\n\(self.rows[3].toString)"
    }
}

extension simd_float4 {
    var toString: String {
        return "[\(self[0].toString), \(self[1].toString), \(self[2].toString), \(self[3].toString)]"
    }
}

extension simd_float1 {
    var toString: String {
        return (self >= 0 ? " " : "") + String(format: "%.2f", self)
    }
}
