# Hub - Um WebApp de armazenamento de anotações

O objetivo do Hub é otimizar sua produtividade, armazenando suas anotações e simplificando sua vida, uma nota de cada vez.

![ezgif com-optimize](https://github.com/OsirisMariano/hub/assets/38112205/db010993-0a33-421e-92ef-ac7256985bec)

## Tecnologias necessárias

| Tecnologia | Versão | Observação |
|---|---|---|
| Ruby | 3.3.0 | Runtime |
| Rails | 7.0.8 | Framework |
| Bootstrap | 5.3 | CSS Framework |
| SQLite3 | 1.4 | Database |
| Node.js | 20+ | Build de assets |
| Yarn | 1.22 | Gerenciador de pacotes JS |

---

## Executando via Docker (Recomendado)

> **Nenhuma dependência precisa ser instalada na sua máquina.** Tudo roda isolado no container.

### Clone em sua máquina
```bash
git clone https://github.com/OsirisMariano/hub
cd hub
```

### Suba o projeto
```bash
docker compose up -d
```
O primeiro `up` irá:
1. Fazer **build da imagem** (instala Ruby, gems, Node.js, Yarn)
2. Rodar **migrations** automaticamente
3. Carregar **seeds** (dados de demonstração)
4. Iniciar o **Puma** (Rails server) na porta 3000
5. Iniciar o **CSS watcher** (compilação automática de estilos)

### Acesse a aplicação
Abra [http://localhost:3000](http://localhost:3000)

### Comandos úteis

| Ação | Comando |
|---|---|
| Ver logs em tempo real | `docker compose logs -f` |
| Parar o projeto | `docker compose down` |
| Parar + remover tudo | `docker compose down -v` |
| Rebuildar (quando mudar deps) | `docker compose build && docker compose up -d` |
| Acessar o container | `docker compose exec web bash` |
| Rodar migrations | `docker compose exec web rails db:migrate` |
| Resetar banco de dados | `docker compose exec web rails db:reset` |
| Rodar testes | `docker compose exec web rails test` |

---

## Executando sem Docker (instalação local)

> Requer Ruby 3.3.0, Node.js 20+ e Yarn 1.22 instalados na máquina.

### Clone em sua máquina
```bash
git clone https://github.com/OsirisMariano/hub
cd hub
```

### Instale as dependências
```bash
bundle install
yarn install
```

### Execute a aplicação
```bash
# Terminal 1 - Rails server
rails server

# Terminal 2 - CSS watcher (para desenvolvimento)
yarn watch:css
```

Acesse [http://localhost:3000](http://localhost:3000)
