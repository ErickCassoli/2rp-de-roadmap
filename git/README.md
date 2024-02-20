# Guia GitFlow - Padrões e Boas Práticas

Este documento serve como um guia abrangente para a implementação do GitFlow em projetos de desenvolvimento de software. O GitFlow é uma metodologia de branching que define uma estrutura e regras específicas para organizar o desenvolvimento, facilitando a colaboração entre os membros da equipe. 

## Nav
- [Branches](#branches)
   - [Pricipais](#branches-principais)
   - [Outras](#outras-branches)
   - [Importancia](#importância-de-cada-branch)
- [Commits](#commits)
   - [Titles](#commits-titles)
   - [Summary](#commits-summary)
- [Pull Requests](#pull-requests)


# Branches

O GitFlow organiza o desenvolvimento em diferentes tipos de branches, cada um com um propósito específico. Isso facilita a gestão do ciclo de vida do software e melhora a colaboração na equipe.

### Branches Principais

1. **`master`**: Representa a produção. Cada commit nesta branch reflete uma nova versão do software. É uma branch fixa, onde a versão mais recente do software em produção está sempre refletida.

2. **`realease`**: Branch para preparar uma nova versão de produção. Essa branch é fixa e usada para correção de bugs e ajustes finais antes de uma versão ser lançada.


3. **`develop`**: Branch de desenvolvimento principal. Todas as novas funcionalidades são integradas aqui antes de serem mescladas na `master`. Também é uma branch fixa.

### Outras branchs

1. **`feature/nome-da-feature`**: Branch para desenvolvimento de novas funcionalidades. Essas branches são temporárias e são mescladas de volta para a `develop` após a conclusão.

   Exemplo:
   ```
   feature/login
   ```

#### Branches de Lançamento

1. **`release/version`**: 
   Exemplo:
   ```
   release/1.0.0
   ```

#### Branches de Correção

1. **`hotfix/nome-do-hotfix`**: Branch para correção de bugs críticos na produção. Essa branch é fixa e permite a correção de problemas sem interferir no desenvolvimento normal.

   Exemplo:
   ```
   hotfix/correcao-de-falha
   ```

### Importância de Cada Branch

### `master`

A branch `master` é a representação da versão mais recente e estável do software em produção. Ela serve como uma base sólida para os usuários finais e é atualizada apenas com versões testadas e aprovadas.

### `release`

A branch `release` é uma etapa crucial antes de lançar uma nova versão. Permite correções finais e testes antes que a versão seja disponibilizada para os usuários finais. Também é uma oportunidade para preparar a documentação necessária.

### `develop`

A branch `develop` é a área de integração principal. Todas as novas funcionalidades são desenvolvidas aqui antes de serem mescladas na `master`. Garante que apenas funcionalidades testadas e concluídas sejam adicionadas à versão principal do software.

### `feature`

As branches `feature` permitem que diferentes membros da equipe trabalhem em funcionalidades separadamente. Isso promove o desenvolvimento paralelo e evita conflitos desnecessários. Uma vez concluídas, as funcionalidades são integradas de volta na `develop`.



### `hotfix`

A branch `hotfix` é uma solução rápida para corrigir bugs críticos na produção sem interferir no desenvolvimento normal. Permite a aplicação de correções urgentes sem esperar pelo próximo ciclo de lançamento.

**Certifique-se de criar e nomear branches de acordo com o propósito de sua mudança. Isso ajuda a acompanhar o que está acontecendo em cada branch e facilita a colaboração da equipe.**
# Commits

### Mensagens de Commit Semânticas

Formato: `<type>(<scope>): <subject>`

`<scope>` é opcional

***Exemplo***

```
feat: adicionar balanço ao chapéu
^--^  ^------------^
|     |
|     +-> Resumo no tempo presente.
|
+-------> Tipo: chore, docs, feat, fix, refactor, style ou test.
```

### Títulos dos Commits

1. **`Feat:`** para adicionar novas funcionalidades ao projeto.

   Exemplo:
   ```
   Feat: Adicionar funcionalidade de login
   ```

2. **`Fix:`** para corrigir bugs ou problemas existentes.

   Exemplo:
   ```
   Fix: Corrigir bug na validação do formulário
   ```

3. **`Refactor:`** para melhorias de código que não introduzem novas funcionalidades ou corrigem bugs.

   Exemplo:
   ```
   Refactor: Refatorar método de autenticação
   ```

4. **`Docs:`** para atualizações de documentação.

   Exemplo:
   ```
   Docs: Atualizar README com instruções de instalação
   ```

5. **`Style:`** para alterações relacionadas a estilos, como formatação de código.

   Exemplo:
   ```
   Style: Ajustar formatação do código
   ```

6. **`Chore:`** para tarefas de manutenção, como atualização de dependências.

   Exemplo:
   ```
   Chore: Atualizar dependências do projeto
   ```

### Resumo dos Commits

**body:**
- Forneça informações mais detalhadas.
- Limite cada linha a 72 caracteres.
- Explique o motivo da mudança e forneça contexto, se necessário.

**footer (opcional):**
- Faça referência a problemas ou questões relacionadas.
- Inclua palavras-chave para integração com ferramentas de rastreamento de problemas.

Exemplo:

```plaintext
feat: adicionar funcionalidade de autenticação

Adiciona a capacidade dos usuários se autenticarem usando OAuth. Essa funcionalidade aprimora a segurança geral da aplicação e proporciona uma experiência de login perfeita.

Fecha #123
```

## Pull Requests

Ao abrir um pull request, siga estas diretrizes:

1. Dê um título descritivo ao pull request, resumindo o que está sendo feito.

2. Forneça uma descrição detalhada do que a mudança faz e por que ela está sendo feita. Isso ajuda os revisores a entender o propósito da mudança.

3. Marque as pessoas que devem revisar o pull request.

4. Certifique-se de que todos os testes passem antes de criar o pull request.

5. Evite criar pull requests excessivamente grandes. É mais fácil revisar mudanças menores e mais específicas.

6. Esteja disposto a fazer alterações com base no feedback da revisão.

