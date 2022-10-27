import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateLayar extends StatelessWidget {
  const CreateLayar({super.key});
  final int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama'),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Tipe Transaksi"),
            ListTile(
              title: Text("Pemasukan"),
              leading:
                  Radio(value: 1, groupValue: _value, onChanged: (value) {}),
            ),
            ListTile(
              title: Text("Pengeluaran"),
              leading:
                  Radio(value: 2, groupValue: _value, onChanged: (value) {}),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Total"),
            TextField(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Simpan")),
          ],
        ),
      )),
    );
  }
}
