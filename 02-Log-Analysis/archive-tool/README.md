# log-archive-tool
Project from: https://roadmap.sh/projects/log-archive-tool

<h1>log-archive.sh – Scheduled Log Archiving Tool</h1>

<h2>🇬🇧 English Description</h2>
<p>
  <strong>Title:</strong> <code>log-archive.sh</code> – A Command-Line Tool to Archive Logs on a Schedule
</p>

<p>
  This Bash script compresses and archives logs from a specified directory (such as <code>/var/log</code>) into a <code>.tar.gz</code> file, and stores them in a separate archive folder. 
  It helps keep your system clean by storing old logs in a compressed format for future reference.
</p>

<p><strong>Features:</strong></p>
<ul>
  <li>Accepts a log directory as a command-line argument</li>
  <li>Compresses all files in that directory into a <code>.tar.gz</code> archive</li>
  <li>Stores the archive in a dedicated directory (default: <code>~/log-archives</code>)</li>
  <li>Names the archive with timestamp: <code>logs_archive_YYYYMMDD_HHMMSS.tar.gz</code></li>
  <li>Appends the archive log to <code>archive.log</code> inside the archive directory</li>
</ul>

<p><strong>How to Use:</strong></p>
<ol>
  <li>Create the script file:
    <pre><code>nano log-archive.sh</code></pre>
  </li>
  <li>Paste the script into the file and save.</li>
  <li>Make the script executable:
    <pre><code>chmod +x log-archive.sh</code></pre>
  </li>
  <li>Run the script with a log directory:
    <pre><code>./log-archive.sh /var/log</code></pre>
  </li>
</ol>

<p><strong>Optional - Schedule via crontab:</strong></p>
<pre><code>crontab -e</code></pre>
<p>Add a line like this to run the script daily at 01:00 AM:</p>
<pre><code>0 1 * * * /full/path/to/log-archive.sh /var/log</code></pre>

<hr>

<h2>🇹🇷 Türkçe Açıklama</h2>
<p>
  <strong>Başlık:</strong> <code>log-archive.sh</code> – Log Dosyalarını Belirli Aralıklarla Arşivleme Aracı
</p>

<p>
  Bu Bash script’i, belirttiğiniz bir log klasöründeki dosyaları (örneğin <code>/var/log</code>) <code>.tar.gz</code> formatında sıkıştırarak ayrı bir klasöre arşivler.
  Sistem temizliği sağlar ve eski logları daha sonra incelemek üzere saklar.
</p>

<p><strong>Özellikler:</strong></p>
<ul>
  <li>Komut satırından log dizini parametresi alır</li>
  <li>Bu dizindeki tüm dosyaları <code>.tar.gz</code> olarak sıkıştırır</li>
  <li>Arşivleri varsayılan olarak <code>~/log-archives</code> klasöründe saklar</li>
  <li>Dosya adını zaman damgası ile oluşturur: <code>logs_archive_YYYYMMDD_HHMMSS.tar.gz</code></li>
  <li>Her arşivleme işlemini <code>archive.log</code> dosyasına kaydeder</li>
</ul>

<p><strong>Nasıl Kullanılır:</strong></p>
<ol>
  <li>Script dosyasını oluştur:
    <pre><code>nano log-archive.sh</code></pre>
  </li>
  <li>Yukarıdaki script’i yapıştır ve kaydet.</li>
  <li>Çalıştırılabilir yap:
    <pre><code>chmod +x log-archive.sh</code></pre>
  </li>
  <li>Script’i bir log klasörüyle çalıştır:
    <pre><code>./log-archive.sh /var/log</code></pre>
  </li>
</ol>

<p><strong>İsteğe Bağlı - Cron ile zamanlayarak çalıştır:</strong></p>
<pre><code>crontab -e</code></pre>
<p>Her gün sabah 01:00'de otomatik çalışması için şunu ekle:</p>
<pre><code>0 1 * * * /full/path/to/log-archive.sh /var/log</code></pre>
