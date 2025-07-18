IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Courtois')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 30, 2700,
           0, 0, 1, 11, 77,
           0, 3, 1, 0, 0, 0
    FROM Players WHERE Name = 'Courtois';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Carvajal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 7, 609,
           1, 1, 0, 3, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Carvajal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'E. Militão')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 11, 940,
           1, 1, 0, 3, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'E. Militão';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Alaba')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 7, 4, 316,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Alaba';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Bellingham')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 29, 2494,
           9, 9, 0, 4, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Bellingham';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Camavinga')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 11, 1096,
           1, 1, 0, 4, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Camavinga';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Vini Jr.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 24, 2257,
           11, 11, 0, 4, 0,
           0, 0, 8, 0, 0, 0
    FROM Players WHERE Name = 'Vini Jr.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Valverde')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 34, 3032,
           6, 6, 0, 11, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Valverde';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mbappé')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 34, 2915,
           31, 31, 0, 5, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Mbappé';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Modrić')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 17, 1819,
           2, 2, 0, 3, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Modrić';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rodrygo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 22, 1937,
           6, 6, 0, 1, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rodrygo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lunin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 7, 7, 630,
           0, 0, 0, 4, 13,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Lunin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Tchouameni')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 31, 2692,
           0, 0, 0, 10, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Tchouameni';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Arda Güler')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 14, 1247,
           3, 3, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Arda Güler';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Endrick')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 3, 353,
           1, 1, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Endrick';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lucas V.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 25, 2193,
           1, 1, 0, 5, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Lucas V.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Vallejo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 1, 136,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Vallejo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'D. Ceballos')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 15, 1218,
           0, 0, 0, 3, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'D. Ceballos';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Fran García')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 24, 2174,
           0, 0, 0, 7, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Fran García';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Brahim')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 16, 1380,
           4, 4, 0, 4, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Brahim';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rüdiger')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 26, 2291,
           0, 0, 0, 11, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Rüdiger';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'F. Mendy')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 12, 1006,
           0, 0, 0, 3, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'F. Mendy';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Fran González')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 90,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Fran González';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Youssef')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Youssef';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Gonzalo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 0, 53,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Gonzalo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Jacobo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 2, 203,
           1, 1, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Jacobo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mestre')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Mestre';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Asencio')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 18, 1673,
           0, 0, 0, 6, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Asencio';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Chema')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 10,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Chema';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'D. Jiménez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'D. Jiménez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lorenzo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 4,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Lorenzo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Yañez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 1,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Yañez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Diego Aguado')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Diego Aguado';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Víctor Muñoz')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 34,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Víctor Muñoz';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Valdepeñas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Valdepeñas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mario Rivas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Mario Rivas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ter Stegen')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 8, 675,
           0, 0, 0, 1, 14,
           0, 1, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ter Stegen';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cubarsí')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 29, 2620,
           0, 0, 0, 5, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Cubarsí';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Balde')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 26, 2292,
           0, 0, 0, 4, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Balde';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'R. Araujo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 11, 757,
           1, 1, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'R. Araujo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'I. Martinez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 28, 2493,
           0, 0, 0, 7, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'I. Martinez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Gavi')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 14, 1083,
           1, 1, 0, 3, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Gavi';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ferran')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 27, 12, 1100,
           10, 10, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Ferran';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pedri')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 35, 2892,
           4, 4, 0, 6, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Pedri';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lewandowski')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 32, 2681,
           27, 27, 0, 4, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Lewandowski';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ansu Fati')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 6, 3, 232,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Ansu Fati';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Raphinha')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 32, 2844,
           18, 18, 0, 7, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Raphinha';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Iñaki Peña')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 15, 1395,
           0, 0, 0, 4, 36,
           0, 2, 1, 0, 0, 0
    FROM Players WHERE Name = 'Iñaki Peña';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pablo Torre')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 10, 4, 308,
           3, 3, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pablo Torre';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Christensen')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 2, 252,
           0, 0, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Christensen';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Fermin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 12, 1245,
           6, 6, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Fermin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'M. Casadó')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 20, 1616,
           1, 1, 0, 4, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'M. Casadó';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pau Victor')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 2, 308,
           2, 2, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Pau Victor';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lamine Yamal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 31, 2861,
           9, 9, 0, 10, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Lamine Yamal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dani Olmo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 13, 1216,
           10, 10, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Dani Olmo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'F. De Jong')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 9, 1136,
           2, 2, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'F. De Jong';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Kounde')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 29, 2606,
           2, 2, 0, 8, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Kounde';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Eric')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 14, 1556,
           2, 2, 0, 6, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Eric';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Szczesny')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 15, 15, 1350,
           0, 0, 0, 8, 21,
           0, 1, 0, 0, 0, 0
    FROM Players WHERE Name = 'Szczesny';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Astralaga')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Astralaga';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marc Bernal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 3, 243,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Marc Bernal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Àlex Valle')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Àlex Valle';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Kochen')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Kochen';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Héctor Fort')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 17, 5, 579,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Héctor Fort';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Darvich')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Darvich';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Martín')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 11, 1028,
           1, 1, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Martín';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sergi Domínguez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 2, 173,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Sergi Domínguez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Alexis Olmedo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Alexis Olmedo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Andrés Cuenca')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Andrés Cuenca';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aron')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Aron';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Guille Fernández')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Guille Fernández';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Toni Fernández')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Toni Fernández';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Alvaro Cortes')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Alvaro Cortes';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Landry')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Landry';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dani Rodriguez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 38,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Dani Rodriguez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Joan Garcia')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 38, 38, 3420,
           0, 0, 0, 8, 146,
           0, 6, 2, 0, 0, 0
    FROM Players WHERE Name = 'Joan Garcia';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Roberto')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 18, 1507,
           6, 6, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Roberto';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. Gómez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 6, 662,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'S. Gómez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Kumbulla')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 34, 2975,
           3, 3, 1, 5, 0,
           0, 0, 10, 0, 0, 0
    FROM Players WHERE Name = 'Kumbulla';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'F. Calero')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 6, 702,
           1, 1, 0, 2, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'F. Calero';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cabrera')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 33, 32, 2870,
           4, 4, 0, 7, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Cabrera';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Puado')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 35, 2987,
           12, 12, 0, 3, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Puado';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Edu Expósito')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 12, 1045,
           0, 0, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Edu Expósito';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Veliz')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 27, 10, 1122,
           1, 1, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Veliz';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pol Lozano')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 27, 1958,
           0, 0, 0, 2, 0,
           0, 0, 13, 0, 0, 0
    FROM Players WHERE Name = 'Pol Lozano';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pere Milla')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 20, 1, 443,
           3, 3, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Pere Milla';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A.tejero')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 13, 1234,
           1, 1, 0, 2, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'A.tejero';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pacheco')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pacheco';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'B. Olivan')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 17, 12, 1017,
           0, 0, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'B. Olivan';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Gragera')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 10, 7, 569,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Gragera';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cheddira')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 5, 631,
           1, 1, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Cheddira';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Jofre')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 26, 2175,
           3, 3, 0, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Jofre';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aguado')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 4, 438,
           0, 0, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Aguado';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Urko')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 17, 16, 1380,
           0, 0, 0, 4, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Urko';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Král')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 29, 2710,
           0, 0, 0, 4, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Král';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'C. Romero')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 28, 2555,
           2, 2, 0, 6, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'C. Romero';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'El Hilali')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 36, 3159,
           0, 0, 0, 7, 0,
           0, 0, 10, 0, 0, 0
    FROM Players WHERE Name = 'El Hilali';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cardona')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 5, 601,
           1, 1, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Cardona';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pablo Ramón')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pablo Ramón';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Catala')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Catala';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Roca')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 13, 1022,
           0, 0, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'A. Roca';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Omar')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Omar';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Fortuño')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'A. Fortuño';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Llorenç')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Llorenç';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Bauza')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 2, 182,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Bauza';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ünüvar')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 29,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ünüvar';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Tristán')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Tristán';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Almansa')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Almansa';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Justin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 3, 209,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Justin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Jose Angel')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Jose Angel';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hinojo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 8,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Hinojo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Ferllo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 9, 8, 746,
           0, 0, 0, 2, 20,
           0, 2, 2, 0, 0, 0
    FROM Players WHERE Name = 'A. Ferllo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Carmona')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 35, 2954,
           0, 0, 0, 9, 0,
           0, 0, 11, 0, 0, 0
    FROM Players WHERE Name = 'Carmona';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pedrosa')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 27, 2303,
           1, 1, 0, 5, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Pedrosa';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Kike Salas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 25, 2237,
           3, 3, 0, 4, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Kike Salas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Vargas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 11, 9, 677,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Vargas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Gudelj')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 27, 2495,
           1, 1, 0, 5, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Gudelj';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Isaac')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 26, 2166,
           4, 4, 0, 1, 0,
           0, 0, 10, 0, 0, 0
    FROM Players WHERE Name = 'Isaac';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Suso')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 4, 599,
           0, 0, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Suso';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lukébakio')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 38, 36, 3098,
           11, 11, 0, 3, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Lukébakio';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sambi')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 16, 1474,
           0, 0, 0, 3, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Sambi';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Nyland')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 30, 2674,
           0, 0, 0, 7, 74,
           0, 4, 2, 0, 0, 0
    FROM Players WHERE Name = 'Nyland';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Peque')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 14, 1133,
           1, 1, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Peque';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Akor')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 1, 131,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Akor';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Saúl')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 24, 17, 1555,
           1, 1, 0, 1, 0,
           0, 0, 8, 0, 0, 0
    FROM Players WHERE Name = 'Saúl';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Agoumé')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 24, 2117,
           1, 1, 0, 4, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Agoumé';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Barco')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 7, 3, 285,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Barco';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sow')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 24, 2068,
           2, 2, 0, 4, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Sow';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ejuke')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 9, 954,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ejuke';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Badé')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 31, 2687,
           1, 1, 0, 8, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Badé';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marcao')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 6, 551,
           0, 0, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Marcao';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Nianzou')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 6, 6, 519,
           0, 0, 1, 2, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Nianzou';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Juanlu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 18, 1724,
           4, 4, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Juanlu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Idumbo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 3, 278,
           1, 1, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Idumbo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Manu Bueno')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 9, 1, 134,
           1, 1, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Manu Bueno';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dario')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 4,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Dario';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Collado')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Collado';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Alberto F.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Alberto F.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Matias')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Matias';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mateo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 10,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Mateo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ramón Martínez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 2, 258,
           1, 1, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ramón Martínez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Oso')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Oso';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rivera')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rivera';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hormigo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 38,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Hormigo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Castrin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'A. Castrin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Isra')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 17,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Isra';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'García Pascual')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 4, 410,
           1, 1, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'García Pascual';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rafa Romero')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rafa Romero';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Antonetti')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 26,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Antonetti';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lulo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Lulo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Remiro')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 36, 3240,
           0, 0, 0, 13, 88,
           0, 6, 0, 0, 0, 0
    FROM Players WHERE Name = 'A. Remiro';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Odriozola')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 41,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Odriozola';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aihen')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 13, 1098,
           0, 0, 0, 3, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Aihen';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Zubimendi')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 33, 2962,
           2, 2, 0, 12, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Zubimendi';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Zubeldia')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 27, 2273,
           0, 0, 0, 8, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Zubeldia';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aritz')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 16, 1455,
           0, 0, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Aritz';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Barrene')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 14, 1258,
           1, 1, 0, 0, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Barrene';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Zakharyan')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 1, 71,
           1, 1, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Zakharyan';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Oskarsson')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 9, 937,
           3, 3, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Oskarsson';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Oyarzabal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 28, 2262,
           9, 9, 0, 2, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Oyarzabal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Becker')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 11, 994,
           2, 2, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Becker';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Javi López')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 21, 1934,
           0, 0, 0, 3, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Javi López';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marrero')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 2, 180,
           0, 0, 0, 0, 9,
           0, 1, 0, 0, 0, 0
    FROM Players WHERE Name = 'Marrero';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Take')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 27, 2382,
           5, 5, 0, 2, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Take';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Olasagasti')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 7, 852,
           1, 1, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Olasagasti';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sergio Gómez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 31, 2743,
           2, 2, 0, 7, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Sergio Gómez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'H.traoré')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 11, 9, 706,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'H.traoré';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aramburu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 35, 28, 2462,
           1, 1, 0, 8, 0,
           0, 0, 8, 0, 0, 0
    FROM Players WHERE Name = 'Aramburu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pacheco')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 9, 851,
           0, 0, 0, 2, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Pacheco';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aguerd')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 21, 1763,
           0, 0, 0, 8, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Aguerd';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Turrientes')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 11, 939,
           0, 0, 0, 2, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Turrientes';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Brais Méndez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 27, 19, 1539,
           3, 3, 0, 2, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Brais Méndez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sucic')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 21, 1795,
           1, 1, 0, 5, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Sucic';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 14, 1237,
           1, 1, 0, 2, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Marin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Goti')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Goti';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Martin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 6, 900,
           0, 0, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Martin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Fraga')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Fraga';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Balda')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Balda';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ruperez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ruperez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Arana')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Arana';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Beitia')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 7,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Beitia';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mariezkurrena')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 9, 1, 236,
           2, 2, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Mariezkurrena';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marchal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Marchal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Diaz')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 9,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Diaz';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Greif')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 31, 2790,
           0, 0, 0, 7, 85,
           0, 2, 1, 0, 0, 0
    FROM Players WHERE Name = 'Greif';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mateu Jaume')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 8, 739,
           0, 0, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Mateu Jaume';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Toni Lato')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 7, 618,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Toni Lato';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mascarell')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 21, 1988,
           1, 1, 0, 2, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Mascarell';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Copete')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 16, 1523,
           0, 0, 0, 3, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Copete';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Muriqi')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 24, 2067,
           7, 7, 1, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Muriqi';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Morlanes')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 15, 1340,
           0, 0, 0, 0, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Morlanes';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Abdón')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 24, 3, 435,
           2, 2, 0, 0, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Abdón';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. Darder')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 38, 34, 2761,
           2, 2, 0, 4, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'S. Darder';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Asano')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 13, 1059,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Asano';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Samu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 31, 2654,
           0, 0, 0, 6, 0,
           0, 0, 8, 0, 0, 0
    FROM Players WHERE Name = 'Samu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Leo Román')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 7, 7, 630,
           0, 0, 0, 2, 40,
           0, 1, 0, 0, 0, 0
    FROM Players WHERE Name = 'Leo Román';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dani Rodríguez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 26, 2175,
           4, 4, 0, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Dani Rodríguez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Valery')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 18, 1, 296,
           2, 2, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Valery';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Larin')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 21, 1774,
           7, 7, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Larin';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Antonio Sánchez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 33, 12, 1387,
           0, 0, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Antonio Sánchez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Chiquinho')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 1, 141,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Chiquinho';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Raillo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 36, 3209,
           2, 2, 0, 9, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'A. Raillo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'J. Mojica')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 30, 2753,
           1, 1, 0, 5, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'J. Mojica';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Maffeo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 28, 2373,
           0, 0, 0, 5, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Maffeo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Valjent')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 31, 2765,
           3, 3, 0, 7, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Valjent';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cuéllar')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Cuéllar';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Navarro')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 15, 1286,
           1, 1, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Navarro';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Jan Salas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 0, 39,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Jan Salas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Domenech')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 10, 3, 298,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Domenech';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pere Joan')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pere Joan';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'David López')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 2, 170,
           0, 0, 0, 1, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'David López';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rui Silva')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 15, 15, 1350,
           0, 0, 0, 4, 37,
           0, 3, 1, 0, 0, 0
    FROM Players WHERE Name = 'Rui Silva';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Bellerín')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 9, 6, 578,
           0, 0, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Bellerín';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Llorente R.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 29, 2522,
           2, 2, 1, 7, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Llorente R.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Johnny')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 24, 2143,
           3, 3, 0, 3, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Johnny';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Bartra')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 23, 2101,
           2, 2, 0, 2, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Bartra';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Natan')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 23, 2170,
           1, 1, 0, 4, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Natan';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Antony')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 17, 15, 1364,
           5, 5, 0, 2, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Antony';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Vitor Roque')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 14, 1237,
           4, 4, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Vitor Roque';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ávila Chimy')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 6, 670,
           2, 2, 0, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Ávila Chimy';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ez Abde')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 23, 1995,
           2, 2, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Ez Abde';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Bakambu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 6, 697,
           2, 2, 0, 0, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Bakambu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rodríguez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 18, 15, 1280,
           0, 0, 0, 3, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rodríguez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Adrián')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 19, 1710,
           0, 0, 0, 3, 50,
           0, 1, 3, 0, 0, 0
    FROM Players WHERE Name = 'Adrián';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'William')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 6, 481,
           0, 0, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'William';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Perraud')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 22, 1998,
           2, 2, 0, 2, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Perraud';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. Altimira')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 22, 1972,
           0, 0, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'S. Altimira';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'P. Fornals')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 22, 1836,
           2, 2, 0, 1, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'P. Fornals';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'C. Hernández')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 15, 14, 1149,
           5, 5, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'C. Hernández';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lo Celso')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 15, 1455,
           8, 8, 0, 1, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Lo Celso';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marc Roca')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 11, 909,
           2, 2, 0, 2, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Marc Roca';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Isco')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 17, 1551,
           9, 9, 0, 2, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Isco';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sabaly')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 20, 1589,
           0, 0, 0, 2, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Sabaly';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aitor Ruibal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 13, 1304,
           1, 1, 0, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Aitor Ruibal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'F. Vieites')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 4, 360,
           0, 0, 0, 0, 7,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'F. Vieites';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Germán')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Germán';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Guilherme Fernandes')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Guilherme Fernandes';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'N. Mendy')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 1, 107,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'N. Mendy';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pleguezuelo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pleguezuelo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Guirao')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 2, 112,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Guirao';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Jesús R.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 21, 15, 1119,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Jesús R.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Ortiz')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 4, 353,
           0, 0, 0, 1, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'A. Ortiz';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Manu G.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Manu G.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Busto')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Busto';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lucas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Lucas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marcos')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Marcos';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rudy Kohon')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rudy Kohon';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mateo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 6, 1, 149,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Mateo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pablo G.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 0, 36,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Pablo G.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. Arribas')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 90,
           0, 0, 0, 1, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'S. Arribas';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'André F.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 6, 6, 540,
           0, 0, 0, 0, 20,
           0, 3, 0, 0, 0, 0
    FROM Players WHERE Name = 'André F.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'L. Pérez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 28, 2558,
           0, 0, 0, 5, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'L. Pérez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'D. Torres')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 18, 15, 1386,
           0, 0, 1, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'D. Torres';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Nikitscher')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 9, 855,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Nikitscher';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Javi Sánchez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 25, 2031,
           2, 2, 0, 3, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Javi Sánchez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cenk')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 11, 8, 756,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Cenk';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'M. Sylla')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 29, 17, 1581,
           5, 5, 0, 1, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'M. Sylla';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Grillitsch')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 7, 622,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Grillitsch';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Marcos André')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 22, 14, 1193,
           1, 1, 0, 0, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Marcos André';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'I. Sánchez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 11, 1395,
           2, 2, 0, 0, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'I. Sánchez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Moro')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 33, 26, 2346,
           4, 4, 0, 2, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Moro';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mario Martín')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 20, 1749,
           0, 0, 0, 1, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Mario Martín';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hein')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 31, 2790,
           0, 0, 0, 5, 96,
           0, 4, 0, 0, 0, 0
    FROM Players WHERE Name = 'Hein';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Latasa')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 28, 14, 1392,
           3, 3, 0, 1, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Latasa';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Cömert')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 25, 21, 1782,
           0, 0, 0, 0, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Cömert';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aidoo Jr')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 6, 582,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Aidoo Jr';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Henrique')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 4, 354,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Henrique';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'D. Machis')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 18, 7, 636,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'D. Machis';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Amath')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 5, 371,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Amath';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. Jurić')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 19, 1735,
           0, 0, 0, 4, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'S. Jurić';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Amallah')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 24, 18, 1384,
           3, 3, 0, 0, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Amallah';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Candela')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 12, 910,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Candela';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Anuar')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 21, 1728,
           2, 2, 0, 1, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Anuar';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Kenedy')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 7,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Kenedy';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Rafús')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 90,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'A. Rafús';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Adrián Verde')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Adrián Verde';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Chuki')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 18, 9, 727,
           2, 2, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Chuki';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Arnu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 5, 0, 45,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Arnu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'R. Chasco')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 1, 129,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'R. Chasco';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Koke')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Koke';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Iago Parente')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 72,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Iago Parente';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'M. Maroto')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 63,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'M. Maroto';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Alani')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 3, 1, 159,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Alani';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aznou')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 10, 874,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Aznou';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'X. Moreno')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 45,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'X. Moreno';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Thierry R.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 11, 9, 771,
           0, 0, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Thierry R.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Domenech')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Domenech';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Caufriez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 90,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Caufriez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Mosquera')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 37, 37, 3320,
           1, 1, 0, 8, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Mosquera';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Diakhaby')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 13, 7, 651,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Diakhaby';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Barrenechea')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 30, 26, 2204,
           1, 1, 0, 3, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Barrenechea';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hugo G.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 12, 4, 360,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Hugo G.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'S. C. Tenés')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 17, 2, 358,
           0, 0, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'S. C. Tenés';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Javi Guerra')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 31, 2593,
           3, 3, 0, 3, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Javi Guerra';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hugo Duro')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 31, 25, 2172,
           11, 11, 1, 2, 0,
           0, 0, 5, 0, 0, 0
    FROM Players WHERE Name = 'Hugo Duro';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'A. Almeida')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 24, 1987,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'A. Almeida';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rafa Mir')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 20, 5, 743,
           1, 1, 0, 0, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Rafa Mir';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Sadiq')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 16, 9, 825,
           5, 5, 0, 0, 0,
           0, 0, 4, 0, 0, 0
    FROM Players WHERE Name = 'Sadiq';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dimitrievski')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 4, 360,
           0, 0, 0, 0, 6,
           0, 2, 1, 0, 0, 0
    FROM Players WHERE Name = 'Dimitrievski';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Gayà')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 23, 22, 1811,
           0, 0, 0, 4, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Gayà';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Tárrega')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 34, 3027,
           2, 2, 2, 8, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Tárrega';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Diego López')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 38, 35, 2760,
           8, 8, 0, 1, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'Diego López';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Dani Gómez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 14, 5, 526,
           2, 2, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Dani Gómez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ivan Jaime')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 9, 2, 292,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Ivan Jaime';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Pepelu')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 34, 18, 1731,
           2, 2, 0, 3, 0,
           0, 0, 7, 0, 0, 0
    FROM Players WHERE Name = 'Pepelu';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Aarons')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 1, 118,
           0, 0, 0, 0, 0,
           0, 0, 2, 0, 0, 0
    FROM Players WHERE Name = 'Aarons';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Foulquier')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 32, 25, 2298,
           0, 0, 0, 4, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'Foulquier';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'J. Vázquez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 19, 10, 916,
           0, 0, 0, 2, 0,
           0, 0, 3, 0, 0, 0
    FROM Players WHERE Name = 'J. Vázquez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'L. Rioja')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 36, 33, 2844,
           5, 5, 0, 2, 0,
           0, 0, 6, 0, 0, 0
    FROM Players WHERE Name = 'L. Rioja';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Fran Pérez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 26, 4, 552,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Fran Pérez';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Yarek')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 15, 9, 945,
           0, 0, 0, 1, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Yarek';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Otorbi')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 0, 13,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Otorbi';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'German V.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 8, 1, 142,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'German V.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Rubo')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Rubo';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Martín Tejón')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 4, 0, 45,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Martín Tejón';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Raúl J.')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Raúl J.';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'V. Abril')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'V. Abril';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'I. Córdoba')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 2, 0, 13,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'I. Córdoba';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Ro')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 1, 1, 66,
           0, 0, 0, 0, 0,
           0, 0, 1, 0, 0, 0
    FROM Players WHERE Name = 'Ro';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Hamza')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Hamza';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Madrigal')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Madrigal';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'P. Alemañ')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'P. Alemañ';
END

IF EXISTS (SELECT 1 FROM Players WHERE Name = 'Lucas Núñez')
BEGIN
    INSERT INTO PlayerStats (
        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,
        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,
        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints
    )
    SELECT Id, 2024, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0, 0
    FROM Players WHERE Name = 'Lucas Núñez';
END