import 'package:app_logger/app_logger.dart';

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
    hidden: false,
    logType: LogType.info,
  );

  // Désactiver les logs avec une fonction
  logger.setIsActive(false);

  // Les logs sont maintenant désactivés
  logger.call(
    message: "Ceci ne sera pas loggé",
    logType: LogType.info,
    hidden: false,
  );
}
