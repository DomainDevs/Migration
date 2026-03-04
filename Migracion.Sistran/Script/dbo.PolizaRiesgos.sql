/* 
=================================================================
-- MIGRACION SISTRAN
--Autor: Sistran
--Fecha Creación:       20260301
--Fecha Modificación:   20260303
--Funcionalidad:        Crear objeto [dbo].[PolizaRiesgos]
=================================================================
*/
IF OBJECT_ID('[dbo].[PolizaRiesgos]') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[PolizaRiesgos]
    IF OBJECT_ID('[dbo].[PolizaRiesgos]') IS NOT NULL
        PRINT '<<< FAILED DROPPING TABLE [dbo].[PolizaRiesgos] >>>'
    ELSE
        PRINT '<<< DROPPED TABLE [dbo].[PolizaRiesgos] >>>'
END
GO
CREATE TABLE [dbo].[PolizaRiesgos]
(
    [Id_pv] INT NOT NULL,
    [Cod_Riesgo] INT NOT NULL,
    [TipoRiesgo] NVARCHAR(200) NOT NULL,
    [Descripcion] NVARCHAR(1000) NULL,
    [SumaAsegurada] DECIMAL(18,2) NULL,
    [PrimaRiesgo] DECIMAL(18,2) NULL
)
GO

IF EXISTS (
    SELECT 1
    FROM sysobjects
    WHERE id = OBJECT_ID('dbo.PolizaRiesgos')
    AND type = 'U'
)
BEGIN
    PRINT '<<CREATE TABLE dbo.PolizaRiesgos SUCCESSFUL!! >>'
END
GO