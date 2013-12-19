var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();

var testName = "Test 1";

UIALogger.logStart( testName );
app.logElementTree();

//-- tap on the text field
UIALogger.logMessage( "Tap on the text field" );
window.textFields()[0].tap();
app.keyboard().typeString("Hello");

target.delay(2);

//-- tap on the return key
UIALogger.logMessage( "Dismiss the keyboard" );
app.keyboard().typeString("\n");

var target = UIATarget.localTarget();
target.captureScreenWithName( "screenShot0" );
target.captureScreenWithName( "screenShot1" ); 

target.delay(2);

//-- select the elements
UIALogger.logMessage( "Select the first tab" );
var tabBar = app.tabBar();
tabBar.buttons()["left"].tap();

target.delay(2);

UIALogger.logMessage( "Select the second tab" );
var tabBar = app.tabBar();
tabBar.buttons()["right"].tap();

target.delay(2);

var host = target.host();



