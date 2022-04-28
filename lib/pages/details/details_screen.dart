import 'package:flutter/material.dart';
import 'package:git_jobs/util/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = '/details-screen';
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vaga: " "Flutter",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50.0),
              child: Image.asset(
                "assets/images/cherry-success.png",
                width: 300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Flutter Developer na BRQ Digital Solutions",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Sexta, 25 de Agosto",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "20h:00",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Descrição da vaga:",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: const TextSpan(
                    text:
                        'O que procuramos? Buscamos #feras com espírito empreendedor e que sabem que são os verdadeiros protagonistas do seu sucesso! Queremos em nosso time pessoas motivadas por desafios, constante evolução e, claro, que são apaixonadas por tecnologia e transformação!O que você deve ter? -Skills Necessárias: Flutter, criação de telas usando widgets, desejável firebase.-CLT, para fazer parte do atendimento a um dos maiores bancos do país.-Salário a combinar + atrativo pacote de benefícios.100% remoto.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: GestureDetector(
                      child: const Center(
                        child: Text(
                          "LINK JOB ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () {}),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
