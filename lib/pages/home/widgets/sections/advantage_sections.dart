import 'package:flutter/material.dart';

class AdvantageSections extends StatelessWidget {
  const AdvantageSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage('+45.000 alunos', 'Didática garantida'),
          buildAdvantage(
              'Certificado de Conclusão', 'Disponivel para cursos pagos'),
          buildAdvantage('Acesso vitalicio', 'Aprenda no seu tempo'),
        ],
      ),
    );
  }

  Widget buildAdvantage(String title, String subTitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
