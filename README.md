# template_app

Template oficial da **Popcode** para projetos Flutter, já configurado com boas práticas, padrões de arquitetura e ferramentas essenciais para desenvolvimento e manutenção.

## 🚀 Tecnologias e Padrões

- **Arquitetura**: Clean Architecture  
- **Gerenciamento de Estado**: Cubit (via [flutter_bloc](https://pub.dev/packages/flutter_bloc))  
- **Lint**: [very_good_analysis](https://pub.dev/packages/very_good_analysis)  
- **Testes**:  
  - Unitários: [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html)  
  - Mocking: [mocktail](https://pub.dev/packages/mocktail)  
  - Integração: [integration_test](https://docs.flutter.dev/testing/integration-tests)  
- **Segurança**:  
  - Variáveis de ambiente com [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) (`.env`)  
- **CI/CD**:  
  - [GitHub Actions](https://docs.github.com/pt/actions) com *matrix build* para iOS e Android  

## 📦 Packages Utilizados

- [dartz](https://pub.dev/packages/dartz): programação funcional/reativa  
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): gerenciamento de estado com Cubit/Bloc  
- [go_router](https://pub.dev/packages/go_router): navegação declarativa e segura  
- [injector](https://pub.dev/packages/injector): injeção de dependência simples e flexível
- [pop_network](https://pub.dev/packages/pop_network): camada de rede
