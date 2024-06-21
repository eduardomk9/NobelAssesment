CREATE PROCEDURE sp_GetFilteredTransactions
    @CampaignId INT = NULL,
    @AgentId INT = NULL,
    @FinalId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

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
    WHERE
        (@CampaignId IS NULL OR c.idCampanya = @CampaignId) AND
        (@AgentId IS NULL OR u.idUsuario = @AgentId) AND
        (@FinalId IS NULL OR t.idFinal = @FinalId)
    GROUP BY 
        c.idCampanya, c.nombre, u.idUsuario, u.apellido1, u.apellido2, u.nombre, u.login
    ORDER BY 
        c.idCampanya, u.idUsuario;
END;


--EXEC sp_GetFilteredTransactions @CampaignId = 1;
--EXEC sp_GetFilteredTransactions @AgentId = 3;
--EXEC sp_GetFilteredTransactions @FinalId = 2;
--EXEC sp_GetFilteredTransactions @CampaignId = 1, @AgentId = 1;
--EXEC sp_GetFilteredTransactions @CampaignId = 2, @AgentId = 1;
--EXEC sp_GetFilteredTransactions;
