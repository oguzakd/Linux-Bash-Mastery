# sample-nginx-log-analyser

project from: https://roadmap.sh/projects/nginx-log-analyser

<h1>log-analyzer.sh – Nginx Log Analysis Tool</h1>

<h2>🇬🇧 English Description</h2>
<p>
  <strong>Title:</strong> <code>log-analyzer.sh</code> – A Simple Shell Script to Analyze Nginx Logs
</p>

<p>
  This tool helps you extract insights from web server logs (e.g., NGINX). It reads a log file and reports key usage statistics like top IPs, paths, status codes, and user agents.
</p>

<p><strong>Features:</strong></p>
<ul>
  <li>Accepts a log file path as argument</li>
  <li>Displays:
    <ul>
      <li>Top 5 IP addresses with most requests</li>
      <li>Top 5 most requested paths</li>
      <li>Top 5 HTTP status codes</li>
      <li>Top 5 user agents</li>
    </ul>
  </li>
</ul>

<p><strong>How to Use:</strong></p>
<ol>
  <li>Download the sample log file:
    <pre><code>wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs</code></pre>
  </li>
  <li>Make the script executable:
    <pre><code>chmod +x log-analyzer.sh</code></pre>
  </li>
  <li>Run the script:
    <pre><code>./log-analyzer.sh nginx_logs</code></pre>
  </li>
</ol>

<hr>

<h2>🇹🇷 Türkçe Açıklama</h2>
<p>
  <strong>Başlık:</strong> <code>log-analyzer.sh</code> – Nginx Loglarını Analiz Eden Basit Bir Shell Script
</p>

<p>
  Bu araç, web sunucusu loglarını (örneğin NGINX) analiz edip en çok istek yapan IP adreslerini, en çok istenen path’leri, en sık dönen HTTP kodlarını ve en çok kullanılan tarayıcıları raporlar.
</p>

<p><strong>Özellikler:</strong></p>
<ul>
  <li>Komut satırından log dosyası parametresi alır</li>
  <li>Şu bilgileri verir:
    <ul>
      <li>En çok istek atan 5 IP adresi</li>
      <li>En çok istenen 5 path</li>
      <li>En sık dönen 5 HTTP status kodu</li>
      <li>En çok kullanılan 5 user-agent</li>
    </ul>
  </li>
</ul>

<p><strong>Nasıl Kullanılır:</strong></p>
<ol>
  <li>Örnek log dosyasını indir:
    <pre><code>wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs</code></pre>
  </li>
  <li>Script’i çalıştırılabilir yap:
    <pre><code>chmod +x log-analyzer.sh</code></pre>
  </li>
  <li>Script’i çalıştır:
    <pre><code>./log-analyzer.sh nginx_logs</code></pre>
  </li>
</ol>
