import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LLAMAR'),
        _buildButtonColumn(color, Icons.near_me, 'COMO LLEGAR'),
        _buildButtonColumn(color, Icons.share, 'COMPARTIR'),
      ],
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Piedra Del Peñol',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Antioquia, Guatape',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('4,5'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Guatapé es un municipio turístico de los Andes al noroeste de Colombia y '
          'al este de Medellín. Es famoso por sus casas decoradas con bajorrelieves de colores. '
          'Está situado cerca del embalse artificial de Peñol-Guatapé, un centro de deportes acuáticos '
          'muy concurrido. La Piedra del Peñol es una roca de granito gigante que se encuentra al sudoeste '
          'de la localidad y que dispone de una larga escalera hasta su cima, en la que se puede disfrutar de '
          'una vista panorámica de la zona.',
          softWrap: true,
        ),
      ),
    );

    return MaterialApp(
      title: 'GUATAPE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GUATAPE'),
        ),
        body: Column(
          children: [
            textSection,
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  titleSection,
                  SizedBox(height: 16),
                  buttonSection,
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Image.network(
                'https://trayectoriasenviaje.com/wp-content/uploads/2022/08/Guatape-18.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
