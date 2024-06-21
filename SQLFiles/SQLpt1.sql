--CREATE INDEX idx_transaccion_idCampanya ON dbo.TRANSACCION(idCampanya);
--CREATE INDEX idx_transaccion_idAgente ON dbo.TRANSACCION(idAgente);

SELECT 
    c.idCampanya,
    c.nombre AS CampaignName,
    u.idUsuario AS AgentID,
    u.nombre,
    u.login AS AgentLogin,
    COUNT(t.idTransaccion) AS TotalTransactions,
    SUM(DATEDIFF(MINUTE, t.tInicio, t.tFinal)) AS TotalMinutes
FROM 
    dbo.TRANSACCION t
JOIN 
    dbo.USUARIO u ON t.idAgente = u.idUsuario
JOIN 
    dbo.CAMPANYA c ON t.idCampanya = c.idCampanya
GROUP BY 
    c.idCampanya, c.nombre, u.idUsuario, u.apellido1, u.apellido2, u.nombre, u.login
ORDER BY 
    c.idCampanya, u.idUsuario;