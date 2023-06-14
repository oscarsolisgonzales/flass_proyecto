import 'package:flutter/material.dart';

class CoinsListScreen extends StatefulWidget {
  const CoinsListScreen({super.key});

  @override
  State<CoinsListScreen> createState() => _CoinsListScreenState();
}

class _CoinsListScreenState extends State<CoinsListScreen> {
  List<String> _defaultCoins = ["bitcoin1", "ethereum", "solana"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _defaultCoins.length,
      itemBuilder: (context, index) {
        return CoinListItem(
          coinName: _defaultCoins[index],
        );
      },
    );
  }
}

class CoinListItem extends StatelessWidget {
  final String coinName;
  final bool up = true;
  const CoinListItem({super.key, required this.coinName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              SizedBox(
                width: 30,
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png"),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bitcoin"),
                  Text("BTC"),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$20,000"),
                  Text(
                    "5%",
                    style: TextStyle(
                      color: up ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
