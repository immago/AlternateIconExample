# AlternateIconExample
Example of ios 10.3+ alternate icons usage.

![alternateicon](https://user-images.githubusercontent.com/5740772/31219168-267a80fe-a9c5-11e7-8021-e0b2a76285ed.gif)


## Requirements
- iOS 10.3 and above
- Set of icons in 3 sizes: 60px, 120px, 180px (@1x, @2x, @3x)

## Step by step
1. Add icon images in project. **Not in Assets.xcassets**
2. Add icons to info.plist
``` XML
	<key>CFBundleIcons</key>
	<dict>
		<key>CFBundleAlternateIcons</key>
		<dict>
			<key>icon-1</key>
			<dict>
				<key>CFBundleIconFiles</key>
				<array>
					<string>icon-1</string>
				</array>
				<key>UIPrerenderedIcon</key>
				<false/>
			</dict>
			
      ...
      
			<key>icon-N</key>
			<dict>
				<key>CFBundleIconFiles</key>
				<array>
					<string>icon-N</string>
				</array>
				<key>UIPrerenderedIcon</key>
				<false/>
			</dict>
		</dict>
		<key>CFBundlePrimaryIcon</key>
		<dict>
			<key>CFBundleIconFiles</key>
			<array>
				<string>AppIcon60x60</string>
			</array>
		</dict>
	</dict>
```
3. Set icon by name (string) or nil to reset to default
``` Objective-C
// Check compatibility before set
    if([UIApplication sharedApplication].supportsAlternateIcons){
        
        // Set by name or nil to reset
        [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
            if(error){
                NSLog(@"error = %@", error.localizedDescription);
            }
        }];
    }else{
        NSLog(@"AlternateIcons unsupported");
    }
```
