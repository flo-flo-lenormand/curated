import SwiftUI
import ActivityKit

@main
struct MediaUploadApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Live Activity Prototype")
                .font(.title)
            Button("Start Upload") {
                startUploadActivity()
            }
        }
        .padding()
    }

    func startUploadActivity() {
        guard ActivityAuthorizationInfo().areActivitiesEnabled else { return }
        let attributes = MediaUploadAttributes()
        let initialState = MediaUploadAttributes.ContentState(progress: 0)
        do {
            let activity = try Activity<MediaUploadAttributes>.request(
                attributes: attributes,
                contentState: initialState,
                pushType: nil)
            Task {
                for i in 1...90 {
                    try? await Task.sleep(nanoseconds: 1_000_000_000)
                    await activity.update(using: .init(progress: Double(i) / 90.0))
                }
                await activity.end(using: .init(progress: 1.0), dismissalPolicy: .immediate)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
