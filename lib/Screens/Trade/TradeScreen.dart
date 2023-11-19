import 'package:fishermap/Palate.dart';
import 'package:flutter/material.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedBoat = _boats[0];
      _selectedPermit = _permits[0];
      _selectedLocation = _locations[0];
    });
  }

  final _boats = ['2톤급', '3톤급', '4톤급', '5톤급', '6톤급', '7톤급'];
  final _permits = [
    '통발',
    '복합',
    '자망',
    '선망',
    '들망',
    '안간망',
    '조망',
    '선인망',
  ];
  final _locations = [
    '무관',
    '부산',
    '인천',
    '강원',
    '경기',
    '경북',
    '충남',
    '전북',
    '울산',
    '전남',
    '제주',
    '경남',
  ];
  String _selectedBoat = '';
  String _selectedPermit = '';
  String _selectedLocation = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palate.ContainerColor,
      ),
      backgroundColor: Palate.ContainerColor,
      body: Container(),
    );
  }
}
