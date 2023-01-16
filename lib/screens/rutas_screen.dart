import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';

class RutasScreen extends StatefulWidget {
  const RutasScreen({Key? key}) : super(key: key);

  @override
  State<RutasScreen> createState() => _RutasScreenState();
}

class _RutasScreenState extends State<RutasScreen> {
  @override
  Widget build(BuildContext context) {
    final CollectionReference rutas =
        FirebaseFirestore.instance.collection('rutas');
    return StreamBuilder(
      stream: rutas.snapshots(),
      builder:
          (BuildContext context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.hasData) {
          return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text('Ruta ${index + 1}', style: AppTheme.h4),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          top: BorderSide(width: 2, color: AppTheme.primary),
                        )),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.credit_card_outlined,
                        size: 70,
                      ),
                      title: Text(
                        documentSnapshot['nombre'],
                        style: AppTheme.h5,
                      ),
                      subtitle: Text(documentSnapshot['distancia']),
                    ),
                  ],
                ),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
