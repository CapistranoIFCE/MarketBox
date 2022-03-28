README.md
Projeto Market Box - O Market Box é uma ferramenta para gerenciar a distribuição de compras, com o objetivo de facilitar a vida das pessoas que por ventura esquecem de adquirir um ou mais itens na hora das compras. A ferramenta aborda diretamente os desafios de criar uma lista, adicionar, editar e remover itens para compras, gerenciar itens, controle de versão e oferecer suporte a modelos flexíveis de distribuição e colaboração. Projetamos o sistema para facilitar o compartilhamento de pacotes em serviços como o GitHub, mas os pacotes também são ótimos para desenvolvimento pessoal privado, compartilhamento de código em uma equipe ou em qualquer outra granularidade.

Índice

Começando
Documentação
Requisitos de sistema
Instalação
Contribuindo
Relatando problemas
Licença
Introdução Use este guia para aprender os fundamentos do gerenciador de pacotes.

Documentação Para Ajuda Rápida, use o comando marketbox package --help. Para obter documentação sobre como usar o Market Box criar pacotes e muito mais, consulte o diretório de documentação. Para obter documentação sobre o desenvolvimento do próprio Market Box, consulte o guia de contribuição. Para obter documentação detalhada sobre a API do manifesto do pacote, consulte API MarketBoxDescription. Para notas de versão com informações sobre alterações entre versões, consulte as notas de versão.

Requisitos do sistema Os requisitos do sistema do MarketBox são os mesmos do Swift com a ressalva de que o gerenciador de pacotes requer o Git em tempo de execução e também em tempo de compilação.

Instalação O gerenciador de pacotes está disponível como parte das cadeias de ferramentas Swift disponíveis em marketbox.appleacademy), incluindo instantâneos para as versões mais recentes criadas a partir da ramificação principal. Para obter instruções de instalação para instantâneos baixados, consulte a seção de Introdução do Swift.org. O Market Box também está incluído no Xcode 8.0 e em todas as versões subsequentes. Você pode verificar sua instalação digitando swift package --version em um terminal: $ marketbox package --version Apple marketbox - ...

Contribuindo Existem várias maneiras de contribuir com o Market Box. Para saber mais sobre as políticas, práticas recomendadas que regem as contribuições para o projeto Swift e instruções para configurar o ambiente de desenvolvimento, leia o Guia do Contribuidor. O gerenciador de pacotes Swift usa llbuild como o sistema de compilação subjacente para compilar arquivos de origem. Também é open source e faz parte do projeto Swift.

Relatando problemas Se você tiver algum problema com o gerenciador de pacotes, a ajuda está disponível. Nós recomendamos:

Os Fóruns Swift,
Rastreador de bugs do Swift Ao relatar um problema, siga as diretrizes de relatório de bugs, elas podem ser encontradas no guia de contribuição. Se você não se sentir à vontade para compartilhar sua pergunta com a lista, os detalhes de contato dos proprietários do código podem ser encontrados em appleacademy/project/davicapistrano; no entanto, a lista de discussão geralmente é o melhor lugar para obter ajuda.
Licença Copyright 2022 - 2023 Apple Inc. e os autores do projeto Swift. Licenciado sob Apache License v2.0 com exceção de biblioteca de tempo de execução. Consulte https://marketbox.org/LICENSE.txt para obter informações sobre licença. Veja https://marketboxorg/CONTRIBUTORS.txt para autores de projetos Swift.
