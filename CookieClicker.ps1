Import-Module Selenium
$WebDriver = Start-SeEdge
Enter-SeUrl https://orteil.dashnet.org/cookieclicker/ -Driver $WebDriver
$Language = $WebDriver.FindElements([OpenQA.Selenium.By]::XPath("//*[@id=`"langSelect-EN`"]"))
$Language.Click()
sleep 10
$Cookie = $WebDriver.FindElements([OpenQA.Selenium.By]::XPath("//*[@id=`"bigCookie`"]"))
While ($TRUE){
	$Cookie.Click()
}
