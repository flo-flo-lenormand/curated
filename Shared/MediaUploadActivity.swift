import ActivityKit

struct MediaUploadAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var progress: Double
    }
}
