import 'package:flutter/material.dart';

List<Map<String, dynamic>> imcData = [
  {
    'IMC': 'Magreza Grave',
    'descricao':
        'Risco de desnutrição e problemas de saúde relacionados à falta de peso',
    'cor': Color(0xfff44336),
  },
  {
    'IMC': 'Magreza Moderada',
    'descricao':
        'Peso corporal é baixo em relação à altura, mas não tão extremo quanto a magreza grave.',
    'cor': Colors.orange,
  },
  {
    'IMC': 'Magreza Leve',
    'descricao': 'Está abaixo do peso saudável, embora não em níveis críticos.',
    'cor': Colors.amber[300],
  },
  {
    'IMC': 'Peso Saudável',
    'descricao':
        'Esta faixa é considerada ideal, indicando um peso que está dentro da faixa saudável em relação à altura.',
    'cor': Colors.green,
  },
  {
    'IMC': 'Sobrepeso',
    'descricao':
        'Peso corporal maior do que o considerado saudável, o que pode aumentar o risco de problemas de saúde, como doenças cardíacas e diabetes.',
    'cor': Colors.amber[300],
  },
  {
    'IMC': 'Obesidade Grau 1',
    'descricao':
        'Indica obesidade moderada, o que pode aumentar significativamente o risco de problemas de saúde, como hipertensão e diabetes tipo 2.',
    'cor': Colors.orange,
  },
  {
    'IMC': 'Obesidade Grau 2',
    'descricao':
        'Forma mais grave de obesidade, com um risco ainda maior de complicações de saúde.',
    'cor': Colors.red,
  },
  {
    'IMC': 'Obesidade Grau 3',
    'descricao':
        'Também conhecida como obesidade mórbida, é o estado mais grave de obesidade, associado a um risco extremamente alto de problemas de saúde, incluindo doenças cardiovasculares, apneia do sono e mais.',
    'cor': Colors.red[900],
  },
  {
    'IMC': '',
    'descricao': '',
    'cor': Colors.white,
  }
];
