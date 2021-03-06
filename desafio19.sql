DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_pessoas INT;
SELECT COUNT(*) FROM hr.employees
WHERE month(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO quantidade_pessoas;
RETURN quantidade_pessoas;
END $$
DELIMITER ;
