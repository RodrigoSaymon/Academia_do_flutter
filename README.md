![][codigo2]


<h1 align="center"> <img width="100" height = "100" src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg">

**Flutter Mão na Massa - Modúlo 13** 

![][codigo]

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Criação de projeto - Aula 1

<h2><p align="left">

```
>flutter create nome_do_projeto
```

<h1 align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">   Principai Widgets 

<h2><p align="left">

 - **main** – starta a aplicação;

- **runApp** – pagina principal *(meu App)*;

- **MaterialApp** – cria a estrutura do projeto baseado no *Material Design*;

- **debugShowCheckedModeBanner: false** - remover plaquinha de *Debug*; 

- **home** - página inicial d aplicação;

- **Scaffold** – responsável por estruturar a página;

- **AppBar** – barra de tarefas do aplicativo;

- **title** – adiciona um título através de um *Text*;

- **Text** – adiciona textos;

- **backgroundColor** - modificar cor da *AppBar* através do *Colors*;

- **Colors** – altera cores;

- **body** – corpo da aplicação *(Pagina em si)*;

- **Center** – movimenta os filhos ao centro;

- **Drawer** – adiciona uma Janela de menus a esquerda;

- **endDrawer** - adiciona uma Janela de menus a direita;

- **IconButton** – adiciona um Cotão em forma de ícone;

- **Icon** – adiciona um ícone;

<h4 p align="left">

---

```dart
//main
import 'package:flutter/material.dart';
import '01_Home/01_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
````

```dart
// Home Page
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academia do Flutter'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_inactive_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airline_seat_individual_suite_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Rodrigo'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Saymon'),
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

```

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 

<h1 align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">   Container - Aula 2

<h2><p align="left">

- **Container** – caixa que assume as características do pai se não for definido;

- **width** – largura;

- **height** – altura;

- **margin** *(EdeInsets)* – define largura da margem na parte externa;

- **padding** *(EdeInsets)* - define largura da margem na parte interna;

- **.only** – define os lados onde quero a margem *(top; left)*

- **.all** – a margem é definida igualmente em todos os lados;

- **.symmetric** – define a margem horizontal e vertical;
- **.fromLTRB** – através de parâmetros obrigatórios define largura de cada margem;

- **decoration** *(BoxDecoration)* - customizações de decoração;

- **borderRadius** *(BorderRadius)* – formato da borda *(.circular; . horizontal.);*

- **boxShadow** – permite colocar sombra ao redor do container. Aceita várias cores;

- **blurRadius** - define largura da sombra;

- **offset** *(Offset)* - define os lados onde quero sobra;

- **SizedBox** - define espaço entre dois *widgets*;

<h4 p align="left">

---

```dart
// Home Page
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academia do Flutter'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_inactive_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airline_seat_individual_suite_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Rodrigo'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Saymon'),
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

```

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 

<h1 align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">   Adicionar imagens Local - Aula 3

<h2><p align="left">

**Na raiz do projeto criaremos as pastas da seguinte forma:**

```
> assets > imagens > arquivo.png
```

**No pubspec.yaml em assets, indicaremos o caminho da imagem da seguinte forma:**

```
assets:
  - assets / imagens / arquivo.png
  ````

**Para chamar a imagem dentro do projeto no vs code:**

```dart
Image.asset(‘assets/imagens/arquivo.png’),
```

**Adicionar imagens da Internet**
```dart
Image.network(‘Imagem_URL’)),
```

**Ajustes na imagem**

- **Fit: BoxFit.fill** – Preenche o total de espaço disponível distorcendo a imagem;
- **Fit: BoxFit.contain** – inclui a imagem no espaço disponível sem distorções;
- **Fit: BoxFit.cover** – Preenche o total de espaço disponível sem distorcer;

**Ajustar Tamanho da imagem**

- **width: 200,** - Ajusta a largura da imagem;
- **height: 200,** - Ajusta a altura da imagem;

**Imagem como background**
```dart
decoration: BoxDecoration( 
    image: DecorationImage (
    image: AssetImage(‘assets/imagens/arquivo.png’), 
    fit: BoxFit.cover,
````
       


---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 


<h1 align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">   Fontes - Aula 4

<h2><p align="left">


O Flutter suporta apenas formatos do tipo:

- **.ttf**

- **.otf**

Podemos baixar as fontes desejadas através do site – **fonts.google.com.**

**Na raiz do projeto criaremos as pastas da seguinte forma:**

```
> assets > fonts > arquivo.ttf
```

**No pubspec.yaml em assets, indicaremos o caminho da fonte da seguinte forma:**

```
Fonts:
  -family: nome_da_fonte
    Fonts:
    - assets: assets/fonts/arquivo.ttf      
  ````

**Para chamar a fonte dentro do projeto no vs code:**

```dart
style: TextStyle(fontFamily: ‘nome_da_fonte’),
```


       


---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 


<h1 align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">   Navegação - Aula 5

<h2><p align="left">


Para navegar, na página principal, adiciona *‘as navegação’* ao lado do endereço de importação da home:
```dart
import 'home.dart' as navegacao;
````

E cria-se variáveis para receber as rotas (nomes):
```dart
 static const HOME = '/';
 static const ORCAMENTO = '/orcamento';
 static const EDITAR = '/editar';
 ```

 Com essas variáveis você consegue invocar o endereço sem erros de digitação. Após isso, define-se as rotas:

 ```dart
routes: {
        HOME: (context) => const navegacao.Home(),
        ORCAMENTO: (_) => const Orcamento(),
        EDITAR: (_) => const Editar(),
      },
```

Pode ser feito também por pagina, via home:

```dart
home: navegacao.Home(),
```
A navegação será feita através de botão. Pode ser por:
- Página 
```dart
 Navigator.of(context).push(
  MaterialPageRoute(
          Settings: RouteSettings(nome:’page2’),
          builder:(_) => Detalhes()),
);
```
- Nome 

```dart
 Navigator.of(Context).pushNamed('/detalhes');
 ```

- Ou através das variáveis* 

````dart
Navigator.of(Context).pushNamed.Detalhes;
````


- **Tipos de Navegação por página:**
- **push** – empilha as páginas;
- **pushAndRemoveUntil** – adiciona uma nova página e remove as anteriores;
- **phshReplacement** – Substitui uma página por uma nova página;

- **Tipos de Navegação por nome:**
- **puhNamed** – empilha as páginas;
- **puhNamedAndRemoeUntil** - adiciona uma nova página e remove as anteriores;
- **phshReplacementNamed** - Substitui uma página por uma nova página;

**Para ambos:**
- **popUntil** – elimina a página com alguma condição predefinida;
- **pop** – elimina a página;

---


**Passagem de parâmetro**

---


**Inerimos um argumento que recebe um objeto:**

````dart
Navigator.of(context).push(
  MaterialPageRoute(
   Nome: ‘detalhes’,
   Arguments: { ‘id’ : 20*
           }
   builder: (context) => Detalhes( ),
    ),
  );
},
````

**Para a página receber esse parâmetro criamos uma variável final e fazemos a interpolação com um Text:**
````dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final param =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Center(child: Text(' o id do produto é ${param? ['id'] ?? 0}')),
    );
````
       


---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 

[codigo]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-4.png?raw=true

[codigo2]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-2.jpg?raw=true



