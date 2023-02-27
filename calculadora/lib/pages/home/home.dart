import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String primeiroValor = "0";
  double? resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculadora"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Text("${primeiroValor}", style: TextStyle(fontSize: 35))),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                  onPressed: () {
                    setState(() {
                      primeiroValor = "0";
                    });
                  },
                  child: Text(primeiroValor != "0" ? "C" : "AC",
                      style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      primeiroValor = primeiroValor.substring(0, primeiroValor.length - 1);
                      if(primeiroValor.length == 0) {
                        primeiroValor = "0";
                      }
                    });
                  },
                  child: Icon(Icons.backspace)),
              FilledButton(
                  onPressed: () {},
                  child: Text("%", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {},
                  child: Text("/", style: TextStyle(fontSize: 20))),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "7";
                        } else {
                          primeiroValor += "7";
                        }
                      });
                    });
                  },
                  child: Text("7", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "8";
                        } else {
                          primeiroValor += "8";
                        }
                      });
                    });
                  },
                  child: Text("8", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "9";
                        } else {
                          primeiroValor += "9";
                        }
                      });
                    });
                  },
                  child: Text("9", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {},
                  child: Text("x", style: TextStyle(fontSize: 20))),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "4";
                        } else {
                          primeiroValor += "4";
                        }
                      });
                    });
                  },
                  child: Text("4", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "5";
                        } else {
                          primeiroValor += "5";
                        }
                      });
                    });
                  },
                  child: Text("5", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "6";
                        } else {
                          primeiroValor += "6";
                        }
                      });
                    });
                  },
                  child: Text("6", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      if(validaUltimoOperador() != true) {
                        primeiroValor = primeiroValor.substring(0, primeiroValor.length - 1);
                      }
                      primeiroValor += "-";
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 20))),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "1";
                        } else {
                          primeiroValor += "1";
                        }
                      });
                    });
                  },
                  child: Text("1", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "2";
                        } else {
                          primeiroValor += "2";
                        }
                      });
                    });
                  },
                  child: Text("2", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor == "0") {
                          primeiroValor = "3";
                        } else {
                          primeiroValor += "3";
                        }
                      });
                    });
                  },
                  child: Text("3", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      if(validaUltimoOperador() != true) {
                        primeiroValor = primeiroValor.substring(0, primeiroValor.length - 1);
                      }
                      primeiroValor += "+";
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 20))),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(onPressed: () {}, child: Icon(Icons.thumb_up)),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        if (primeiroValor != "0") {
                          primeiroValor += "0";
                        }
                      });
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      if(!primeiroValor.contains(",")) {
                        primeiroValor += ",";
                      }
                    });
                  },
                  child: Text(",", style: TextStyle(fontSize: 20))),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      List<String> aux = primeiroValor.split(RegExp("[+]|[-]"));
                      double operacao = 0;
                      aux.forEach((element) {
                        operacao += double.parse(element.replaceAll(",", "."));
                      });
                      primeiroValor = operacao.toString().replaceAll(".", ",");
                    });
                  },
                  child: Text("=", style: TextStyle(fontSize: 20))),
            ],
          ),
        ],
      ),
    );
  }

  bool validaUltimoOperador() {
    if(primeiroValor.substring(primeiroValor.length - 1) != "+"
        && primeiroValor.substring(primeiroValor.length - 1) != "-"
        && primeiroValor.substring(primeiroValor.length - 1) != "x"
        && primeiroValor.substring(primeiroValor.length - 1) != "/"
        && primeiroValor.substring(primeiroValor.length - 1) != "%") {
      return true;
    }

    return false;
  }
}
