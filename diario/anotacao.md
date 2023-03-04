# Variável
Variável é o nome utilizado para representar um valor ou expressão que será utilizada na programação.
Podendo existir diversos tipos que guardam diferentes valores.

**Exemplo implementação**

```
String nome = "Leonardo";
int idade = 20;
double altura = 1.75;
boolean casado = false;
```

# Null safety
Toda variável declarada, em dart, deve ser inicializada ou declarada como nula, devido a funcionalidade "null safety" implementada na versão 2.0 do dart.

**Exemplo implementação**

```
String nome = "Leonardo";
int idade = 20;
double? altura;
late bool casado;
```

# Funções
Funções são trechos de códigos encapsulados e que podem ser chamados em outra parte do sistema.

**Exemplo implementação**

```
void exemploFuncao();
```

## Funções anônimas
Funções podem ser declaradas sem definir um tipo de retorno e um nome, elas só podem ser criadas dentro de variáveis.

**Exemplo implementação**

```
void main() {
    var funcaoAnonima = () {};
}
```

## Arrow functions
As arrow functions são funções anônimas que simplificam a visualização e interpretação do código.

**Exemplo implementação**

```
void main() {
    var arrowFunction = () => print("Leonardo");
}
```

# Parâmetros
Parâmetros são valores que podem ser passados para uma função, funções também podem ser passadas por parâmetro.

**Exemplo implementação**

```
void main() {
    var printar = (String texto) => print(texto);
    exemploFuncaoComParametro("Olá mundo!", printar);
}

void exemploFuncaoComParametro(String valor, Function exibir) {
    exibir(valor);
}
```

### Parâmetro opcional
Todos os parâmetros podem ser declarados como opcionais, ou seja, você escolhe quais variáveis são obrigatórias ao chamar uma função, lembrando que ao declarar um parâmetro como opcional você é obrigado a inicializar ele.

## Parâmetros posicionais e nomeados
Existem dois tipos de parâmetros em dart, os posicionais e os nomeados, contendo suas particularidades.

### Parâmetro posicional
Os parâmetros posicionais são os mais utilizados na linguagem dart, pois são os parâmetros padrão ao criar uma função, a ordem dos parâmetros criados define a ordem que você passa eles.

**Exemplo implementação com parâmetros obrigatórios:**
```
void exemploParametroPosicionalObrigatorio(String primeiroParametro, int segundo parametro);
```

**Exemplo implementação com parâmetros opcionais**
```
void exemploParametroPosicionalOpcional([String? primeiroParametro, int segundoParametro = 0]);
```

**Exemplo chamada:**
```
void main() {
    exemploParametroPosicionalObrigatorio("Leonardo", 0);
    exemploParametroPosicionalOpcional("Leonardo");
}
```

### Parâmetro nomeado
Os parâmetros nomeados são menos utilizados, porém não há necessidade de passar os parâmetros numa ordem específca e auxilia para identificar qual variável você está passando.

**Exemplo implementação com parâmetros obrigatórios**

```
void exemploParametroNomeadoObrigatorio({required String primeiroParametro, required int segundoParametro});
```

**Exemplo implementação com parâmetros opcionais**

```
void exemploParametroNomeadoOpcional({String? primeiroParametro, int? segundoParametro});
```

**Exemplo chamada**

```
void main() {
    exemploParametroNomeadoObrigatorio(segundoParametro: 0, primeiroParametro: "Leonardo");
    exemploParametroNomeadoOpcional(primeiroParametro = "Leonardo);
}
```
