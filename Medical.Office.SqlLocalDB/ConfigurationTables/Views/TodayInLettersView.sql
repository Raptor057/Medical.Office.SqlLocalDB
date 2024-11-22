﻿CREATE VIEW [dbo].[TodayInLettersView]
	AS SELECT 
    DT.DayInSpanish AS TodayInLetters
FROM 
    DaysTranslation DT
WHERE 
    DT.DayInEnglish = FORMAT(GETDATE(), 'dddd');
