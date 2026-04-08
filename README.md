# 🚀 AWS Infrastructure as Code (IaC) com Terraform

Este projeto demonstra o provisionamento automatizado de uma infraestrutura básica na **AWS** utilizando **Terraform**. Ele foi desenvolvido para validar competências em Cloud Computing, Redes e Automação, alinhado às certificações **AWS Solutions Architect Associate** e **HashiCorp Terraform Associate**.

## 🏗️ Arquitetura do Projeto

A infraestrutura provisionada inclui:
- **VPC (Virtual Private Cloud)**: Rede isolada com bloco CIDR `10.0.0.0/16`.
- **Subnet Pública**: Sub-rede com acesso à internet para hospedar recursos públicos.
- **Internet Gateway (IGW)**: Permite a comunicação entre a VPC e a internet.
- **Route Table**: Configurada para rotear o tráfego da subnet pública para o IGW.
- **Security Group**: Regras de firewall liberando as portas `22` (SSH) e `80` (HTTP).
- **Instância EC2**: Servidor web (Amazon Linux 2023) provisionado automaticamente com um script de `user_data` para instalar e iniciar o Apache (httpd).

## 🛠️ Tecnologias Utilizadas

- **Provedor Cloud**: AWS (Amazon Web Services)
- **IaC**: Terraform
- **Servidor Web**: Apache (httpd)
- **Sistema Operacional**: Amazon Linux 2023

## 📂 Estrutura de Arquivos

- `main.tf`: Definição principal dos recursos da infraestrutura.
- `variables.tf`: Declaração de variáveis para flexibilidade (região, tipo de instância, AMI, key pair, CIDR SSH).
- `outputs.tf`: Exibição de informações importantes após o deploy (IP Público, URL, VPC ID, Security Group ID).

## 🚀 Como Executar

### Pré-requisitos
1. Ter uma conta AWS ativa.
2. Terraform instalado localmente.
3. AWS CLI configurado com suas credenciais (`aws configure`).
4. Um **Key Pair** criado no console da AWS (EC2 > Key Pairs).

### Passo a Passo
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/projeto-terraform-aws.git
   cd projeto-terraform-aws
   ```
2. Inicialize o Terraform:
   ```bash
   terraform init
   ```
3. Verifique o plano de execução:
   ```bash
   terraform plan
   ```
4. Aplique as mudanças (informe seu Key Pair e, opcionalmente, seu IP):
   ```bash
   terraform apply -var="key_name=nome-do-seu-key-pair" -var="ssh_allowed_cidr=SEU_IP/32"
   ```
5. Após a conclusão, acesse a URL fornecida no `output` para ver o servidor web em funcionamento!

## 🧹 Limpeza de Recursos
Para evitar custos desnecessários na AWS, destrua a infraestrutura após os testes:
```bash
terraform destroy
```

---
**Desenvolvido por Joana Aghata Dias Cardoso**  
*Suporte Técnico N1 | Cloud AWS | Análise de Dados*
