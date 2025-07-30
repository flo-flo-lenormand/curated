import WidgetKit
import SwiftUI
import ActivityKit

struct MediaUploadWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: MediaUploadAttributes.self) { context in
            HStack {
                Image(systemName: "photo")
                Text("Media are uploading")
                Spacer()
                ProgressView(value: context.state.progress)
                    .progressViewStyle(.circular)
            }
            .padding()
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Image(systemName: "photo")
                }
                DynamicIslandExpandedRegion(.center) {
                    Text("Media are uploading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    ProgressView(value: context.state.progress)
                        .progressViewStyle(.circular)
                }
            } compactLeading: {
                Image(systemName: "photo")
            } compactTrailing: {
                ProgressView(value: context.state.progress)
                    .progressViewStyle(.circular)
            } minimal: {
                ProgressView(value: context.state.progress)
                    .progressViewStyle(.circular)
            }
        }
    }
}

@main
struct MediaUploadWidgetBundle: WidgetBundle {
    var body: some Widget {
        MediaUploadWidget()
    }
}
