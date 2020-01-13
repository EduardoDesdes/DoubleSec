chrome.browserAction.onClicked.addListener(function(tab){
	chrome.tabs.executeScript(null,{file:"bin/jquery-1.8.3.min.js"})
	chrome.tabs.executeScript(null,{file:"bin/jsencrypt.min.js"})
	chrome.tabs.executeScript(null,{file:"swap.js"})
})