function compareImages(img1, img2) {

	var host = target.host();
 
	var result = host.performTaskWithPathArgumentsTimeout("/usr/local/bin/compare", ["-metric", "MAE", img1, img2, "diff"], 5);

	var res = new Object();
	res['exitCode'] = result.exitCode;
        res['stdout'] = result.stdout;
        res['stderr'] = result.stderr;

	return res;
}


function isPlaying(target, rect) {

	var host = target.host();
	
	//Clean the old staff
	//var result = host.performTaskWithPathArgumentsTimeout("/bin/rm", ["-rf", '*'], 5);
	//UIALogger.logMessage("rm *.." + result.exitCode);	

	target.captureRectWithName(rect, "videoShot0");	
	target.captureRectWithName(rect, "videoShot1");	
	
	// Wait for views capture
	target.delay(2);

	var res = compareImages("Run\ 1/videoShot0.png","Run\ 1/videoShot1.png");
	UIALogger.logMessage("Comparing the image with the reference one.." + res.stderr);

	if (res.stderr == "0 (0)") {
		return 0;
	} else {
		return 1;
	} 
}
