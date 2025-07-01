# 🦶 Contador de Passos - Flutter + Wear OS


## Grupo 
**Carolina Gonzalez Natlie Fernandez y Nicolás Lara**  **Wear OS**, através da API **Health Connect**

---
## 📱 Funcionalidades

- Conta a quantidade de passos das últimas 24h direto do relógio.
- Interface simples e responsiva.
- Arquitetura clara seguindo o padrão **MVVM (Model-View-ViewModel)**.
- Simulação de dados de passos para testes locais (caso o relógio não forneça dados reais).

---

## 🔐 Permissões Utilizadas

O app solicita as seguintes permissões:

- `android.permission.ACTIVITY_RECOGNITION`
- `android.permission.BODY_SENSORS`
- `android.permission.health.READ_STEPS`
- `android.permission.health.CONNECT`

Essas permissões são necessárias para acessar os dados de passos do relógio via Health Connect.

---

## 🔄 Acesso aos Dados via Health Connect

- Utilizamos a API do **Health Connect** para obter dados de passos diretamente do relógio.
- O app acessa somente os dados do relógio, **não coleta passos do smartphone**.
- A simulação de dados pode ser ativada para fins de teste, simulando registros de passos locais.


1. Clone o repositório:

```bash
git clone https://github.com/niikila/contador_pasos.git
cd contador_pasos