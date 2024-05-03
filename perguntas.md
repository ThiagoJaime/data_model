## 1. Quais são as entidades necessárias? 
- Empresa
- Tecnologia
- Utiliza
- Colaborador
- Area

## 2. Quais são os principais campos e seus respectivos tipos? 
- 'Cnpj: INT'
- 'ID: INT'
- 'Area_id: INT'
- 'Cpf: INT'

## 3. Como essas entidades estão relacionadas? 
- A empresa contrata nenhum ou vários colaboradores, já o colaborador, vai ser contratado por uma e somente uma empresa. A empresa pode utilizar várias tecnologias, e as tecnologias podem ser utilizadas por várias empresas. tecnologia tem um atributo multifatorado chamado area, criando assim, a tabela area com os atributos webdev, dados e marketing.

## 4. Simule 2 registros para cada entidade:

### Entidade "Empresa":
| Cnpj | Site | Nome | Contato
|----------|----------|----------|----------|
| 123456789 | www.empresa1.com | Empresa 1 | 2198515157 |
| 987654321 | www.empresa2.com | Empresa 2 | 2198514718 |

### Entidade "Colaborador":
| Id | Cpf | Telefone | Cargo | fk_Empresa_cnpj |
|----------|----------|----------|----------|----------|
| 1 | 12345678900 | 2198515157 | Desenvolvedor | 123456789 |
| 2 | 98765432100 | 2498547457 | Analista de Dados | 987654321 |

### Entidade "Tecnologia":
| Id | Nome | fk_area_area_Pk | 
|----------|----------|-------|
| 1 | Java | 1 |
| 2 | Python | 1 |

### Entidade "Area":
| Id | Webdev | Dados | Marketing
|----------|----------|----------|----------|
| 1 | 1 | 1 | 0 |
| 2 | 1 | 0 | 0 |

### Entidade "Relatorio":
| Data | fk_Tecnologia_id | fk_Empresa_cnpj |
|----------|----------|----------|
| 2022/01/01 | 1 | 123456789 |
| 2022/02/02 | 2 | 987654321 |
