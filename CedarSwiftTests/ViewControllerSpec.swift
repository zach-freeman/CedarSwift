import Cedar
import Nimble
@testable import CedarSwift

class ViewControllerSpec: CDRSpec {
    override func declareBehaviors() {
        var subject: ViewController!
        
        beforeEach {
            subject = ViewController()
        }
        
        describe("viewDidLoad()") {
            beforeEach {
                subject.viewDidLoad()
            }
            
            it("should set something to test to false") {
                expect(subject.somethingToTest).to(beFalse())
            }
        }
    }
}
