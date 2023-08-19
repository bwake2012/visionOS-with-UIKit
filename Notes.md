### How to migrate our app?

- No need to support 3D models 
	- just build for Vision (Design for iPad)
- Need to support 3D models -> build Vision Pro
	- Just care for the default UIs and colors

- **Some APIs are not supported by xrOS:**
    - `UIScreen`, `UIDeviceOrienctation`, `UITabBar leading and trailing` is unavailable in xrOS
    - `PencilKit` related features are not supported by the xrOS
    - UIPopoverPresentationController: `backgroundColor`, `popoverLayoutMargins`, `adaptiveSheetPresentationController` are not supported by the xrOS as well
    
### How to know now user executes the app on xrOS?
- `#if os(xrOS)`
- `UIDevice.current.userInterfaceIdiom == .reality`
- `UIViewController().traitCollection.userInterfaceIdiom`

### Can we create a view out of the window, just like how Apple demoed the Vision Pro?
- There's a new component that supports do like that: `ornament`

### What about xrOS for UIKit?
- How to use the glass effect on UIView?

	```Swift
	// Indicates the view controller's preference to be displayed on top of a background.
	// The default value is automatic.
	override var preferredContainerBackgroundStyle: UIContainerBackgroundStyle {
	    .glass // default is hidden
	}
	```
- Presentations:
	
	```Swift
	let controller = ComponentsViewController()
	controller.modalPresentationStyle = .popover
	
	if let presentationController = controller.popoverPresentationController {
	    presentationController.sourceView = sender
	    
	    switch traitCollection.userInterfaceIdiom {
	    case .reality:
	        presentationController.permittedArrowDirections = .right
	    default:
	        presentationController.permittedArrowDirections = .any
	    }
	}
	present(controller, animated: true)
	```
	
- How to use ornament in UIKit

	```Swift
	#if os(xrOS)
	let ornament = UIHostingOrnament(sceneAlignment: .bottom, contentAlignment: .leading) {
	    Text(verbatim: "123455678987654")
	        .glassBackgroundEffect(displayMode: .always)
	}
	ornaments = [ornament]
	#endif
	```
- How to use RealityKit?
	- There's no component regards to RealityKit for UIKit
	- As an alternative, we can use RealityView(SwiftUI) via UIHostingController

- Now, everyone sees UIKit maybe is not the future in Apple's strategy, at least not the future for UIKit.
  Also, there's a warning shown to us that SB is gonna be history in the near future. 
  - `Compiling Interface Builder products for visionOS will not be supported in a future version of Xcode. `

- When it comes to UIKit, how do you modify the hover effect??
	- Will demo in Part IV :P
- How the hover effect looks on the UIKit?
	- Will demo in Part IV :P

