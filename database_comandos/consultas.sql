-- Empresa que utiliza o maior número de tecnolgias no ano de 2022/02
SELECT e.nome AS Empresa_Nome, SUM(a.webdev + a.dados + a.marketing) AS Areas_Utilizadas
FROM Relatorio r
JOIN Tecnologia t ON r.fk_tecnologia = t.id
JOIN Areas a ON t.fk_area = a.id
JOIN Empresa e ON r.fk_cnpj = e.cnpj
WHERE YEAR(r.Datas) = 2022 AND MONTH(r.Datas) = 2
GROUP BY e.nome
ORDER BY Areas_Utilizadas DESC
LIMIT 1;

-- Quantidade de empresas que utiliza tecnologias na area de dados 
SELECT SUM(A.dados) AS soma_dados
FROM Relatorio R
JOIN Tecnologia T ON R.fk_tecnologia = T.id
JOIN Areas A ON T.fk_area = A.id
WHERE A.dados = 1;

-- Quantas tecnologias são usadas sem ser na area de dados
SELECT SUM(A.webdev + A.marketing) AS soma_valores
FROM Relatorio R
JOIN Tecnologia T ON R.fk_tecnologia = T.id
JOIN Areas A ON T.fk_area = A.id;
