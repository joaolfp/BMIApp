test:
	xcodebuild -workspace BMI.xcworkspace -scheme CI -destination "platform=iOS Simulator,name=IPhone 14" -enableCodeCoverage YES clean test | xcpretty
