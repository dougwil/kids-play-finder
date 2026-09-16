# Kid's Play Finder 🎈

> **Aplicação Web Responsiva (PWA) para Mapeamento e Avaliação de Áreas Infantis em Estabelecimentos Gastronômicos em Conformidade com a ABNT NBR 16071.**

[![React](https://img.shields.io/badge/React-18.x-61DAFB?logo=react)](https://react.dev/)
[![Vite](https://img.shields.io/badge/Vite-5.x-646CFF?logo=vite)](https://vitejs.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-3.x-38BDF8?logo=tailwindcss)](https://tailwindcss.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📌 Sobre o Projeto

O **Kid's Play Finder** é uma *Single Page Application* (SPA) desenvolvida para resolver a assimetria de informações enfrentada por pais e responsáveis em busca de restaurantes e lanchonetes com áreas de lazer infantis (*playgrounds*) seguras, higienizadas e monitoradas em Maringá/PR.

A aplicação destaca a conformidade dos estabelecimentos com a norma **ABNT NBR 16071** (requisitos de segurança para playgrounds), oferecendo busca reativa em tempo real, visualização de *badges* de infraestrutura e informações de acessibilidade.

Este projeto foi desenvolvido como requisito da disciplina *Projeto Integrador de Tecnologia da Informação II* do programa **UFMS**.

---

## 🚀 Funcionalidades

* **Busca e Filtragem Reativa:** Pesquisa instantânea por nome do estabelecimento ou tipo de culinária sem recarregamento da página (`useState`).
* **Indicadores de Segurança (NBR 16071):** Sinalização visual destacada para locais que cumprem as normas de segurança infantil.
* **Ficha Técnica do Local:** Informações de presença de monitoria, gratuidade, áreas cobertas e faixa etária.
* **Interface Mobile-First:** Layout responsivo otimizado para celulares e computadores via Tailwind CSS.
* **Programação Defensiva:** Resiliência contra erros de execução no consumo do modelo de dados (`Optional Chaining`).

---

## 🛠️ Tecnologias Utilizadas

* **Front-end:** [React 18](https://react.dev/)
* **Ferramenta de Build:** [Vite](https://vitejs.dev/)
* **Estilização:** [Tailwind CSS](https://tailwindcss.com/)
* **Iconografia:** [Lucide React](https://lucide.dev/)
* **Controle de Versão:** [Git](https://git-scm.com/) e [GitHub](https://github.com/)

---

## 📂 Estrutura do Projeto

```text
kids-play-finder/
├── public/              # Arquivos estáticos e manifesto PWA
├── src/
│   ├── components/      # Componentes reutilizáveis
│   │   ├── Header.jsx          # Cabeçalho da aplicação
│   │   ├── SearchBar.jsx       # Campo de busca e controles
│   │   └── RestaurantCard.jsx  # Cartão de exibição do estabelecimento
│   ├── data/
│   │   └── mockRestaurants.js # Base de dados simulada
│   ├── App.jsx          # Componente raiz e gerenciamento de estado
│   ├── main.jsx         # Ponto de entrada da aplicação
│   └── index.css        # Diretivas globais do Tailwind CSS
├── package.json         # Dependências e scripts do projeto
├── vite.config.js       # Configuração do Vite
└── README.md            # Documentação técnica do repositório

Autor e Créditos Acadêmicos
**Estudante**: Douglas Wilson Lopes Ananias
**Curso**: Tecnologia da Informação — UFMS
**Disciplina**: Projeto Integrador de Tecnologia da Informação II