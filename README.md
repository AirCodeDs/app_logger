<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>app_logger</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }
        .header p {
            font-size: 18px;
            color: #555;
        }
        .badge {
            display: inline-block;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            text-align: center;
        }
        .badge-warning {
            background-color: #f39c12;
        }
        .badge-danger {
            background-color: #e74c3c;
        }
        .badge-info {
            background-color: #3498db;
        }
        .badge-normal {
            background-color: #9b59b6;
        }
        .section-header {
            margin-top: 40px;
            margin-bottom: 20px;
        }
        .section-header h2 {
            font-size: 24px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .section-content {
            margin-bottom: 40px;
        }
        .toc {
            margin-left: 20px;
            margin-bottom: 20px;
        }
        .toc li {
            list-style-type: none;
            margin-bottom: 5px;
        }
        .toc li a {
            text-decoration: none;
            color: #333;
        }
        .toc li a:hover {
            text-decoration: underline;
        }
        .installation-steps {
            margin-left: 20px;
        }
        .installation-steps pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
            border-left: 3px solid #3498db;
        }
        .installation-steps code {
            color: #c0392b;
            font-size: 16px;
        }
        .usage-example {
            margin-left: 20px;
        }
        .usage-example pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
            border-left: 3px solid #2ecc71;
        }
        .usage-example code {
            color: #27ae60;
            font-size: 16px;
        }
        .footer {
            margin-top: 40px;
            border-top: 1px solid #ccc;
            padding-top: 20px;
            text-align: center;
        }
        .footer p {
            color: #555;
        }
        .footer a {
            color: #3498db;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>app_logger</h1>
            <h6>A flexible and customizable logging package for Dart applications.</h6>
            <p></p>
        </div>
        <!-- Table of Contents -->
        <div class="toc">
            <h2>Table of Contents</h2>
            <ol>
                <li><a href="#about-the-project">About The Project</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#installation">Installation</a></li>
                <li><a href="#usage">Usage</a></li>
                <!-- <li><a href="#roadmap">Roadmap</a></li>
                <li><a href="#contributing">Contributing</a></li>
                <li><a href="#license">License</a></li> -->
                <li><a href="#contact">Contact</a></li>
                <!-- <li><a href="#acknowledgments">Acknowledgments</a></li> -->
            </ol>
        </div>
        <!-- About The Project -->
        <div class="section-header" id="about-the-project">
            <h2>About The Project</h2>
        </div>
        <div class="section-content">
            <p>app_logger` is a Dart package designed to streamline logging within Dart and Flutter applications. It empowers developers to efficiently manage log messages with varying levels of severity (error, warning, info, normal) while offering the flexibility to customize logging behavior according to the application's mode. With `app_logger`, developers can seamlessly toggle logging on or off globally, saving time and effort when debugging or deploying applications.</p>
        </div>
        <!-- Features -->
        <div class="section-header" id="features">
            <h2>Features</h2>
        </div>
        <div class="section-content">
        <ol>
        <li>Log messages with different log levels: error, warning, info, normal.</li>
        <li>Customizable logging behavior and output formats.</li>
        <li>Ability to enable or disable logging dynamically.</li>
        <li>Lightweight and easy to integrate into existing Dart and Flutter projects.</li>
       </ol>
       </div>
        <!-- Installation -->
        <!-- Installation -->
<div class="section-header" id="installation">
    <h2>Installation</h2>
</div>
<div class="section-content">
    <div class="installation-steps">
        <pre><code>app_logger:
  git:
    url: https://github.com/Raphael-BADA/app_logger.git</code></pre>
    </div>
</div>

<!-- Usage -->
<div class="section-header" id="usage">
    <h2>Usage</h2>
</div>
<div class="section-content">
    <div class="installation-steps">
        <pre><code>import 'package:app_logger/app_logger.dart';
void main() {
  //Exemple de donnée à logger
  Map<String, dynamic> jsonMap = {
    'firstName': 'Air',
    'lastName': 'Code',
    'age': 23,
    'profession': 'Apps developper',
  };

  // Créer une instance de AppLogger avec les logs activés par défaut
  var logger =
      AppLogger(); // AppLogger(isActive:false) pour désactiver les loggs dans toutes l'appli

  // Utiliser la méthode call pour logger un message
  logger.call(
    message: jsonMap,
    logType: LogType.info,
  );

  // Désactiver les logs avec une fonction
  logger.setIsActive(false);

  // Les logs sont maintenant désactivés
  logger.call(
    message: "Ceci ne sera pas loggé",
    logType: LogType.info,
  );
}</code></pre>
    </div>
</div>
</div>
        <!-- Roadmap -->
        <!-- Contact -->
        <div class="section-header" id="contact">
            <h2>Contact</h2>
        </div>
        <div class="section-content">
            <p>raphaelbadak@gmail.com</p>
        </div>
        <!-- Acknowledgments -->
        <!-- Back to Top -->
        <div class="footer">
            <p><a href="#readme-top">Back to top</a></p>
        </div>
    </div>
</body>

</html>
