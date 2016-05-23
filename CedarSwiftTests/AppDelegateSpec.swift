import Cedar
import Nimble
@testable import CedarSwift

class AppDelegateSpec: CDRSpec {
    override func declareBehaviors() {
        var delegate: AppDelegate!
        
        beforeEach {
            delegate = AppDelegate()
        }
        
        describe("application:didFinishLaunchingWithOptions:") {
            beforeEach {
                delegate.application(UIApplication.sharedApplication(), didFinishLaunchingWithOptions: nil)
            }
            
            it("should set up the window with the root view controller") {
                expect(delegate.window?.rootViewController).to(beNil())
            }
        }
    }
}
