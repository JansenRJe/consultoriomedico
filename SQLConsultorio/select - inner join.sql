SELECT 
	a.id numero,
    b.nome paciente,
    c.nome atendente,
    d.nome medico,
    DATE_FORMAT(a.data,'%d/%m/%Y') data,
    a.hora_inicial,
    a.hora_final
FROM agendamento a
INNER JOIN paciente b ON b.id = a.paciente
INNER JOIN atendente c ON c.id = a.atendente
INNER JOIN medico d ON d.id = a.medico;