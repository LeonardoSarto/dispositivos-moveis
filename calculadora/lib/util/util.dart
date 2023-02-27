class Util {

  static double converterStringParaDouble(String valor) {
    return double.parse(valor.replaceAll(",", "."));
  }
}