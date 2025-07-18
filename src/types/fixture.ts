type FixtureProps = {
    homeTeamName: string,
    homeTeamImg: string,
    homeTeamScore: string | number,
    awayTeamName: string,
    awayTeamImg: string,
    awayTeamScore: string | number,
}

type FixturesProps = {
    gameweek: number,
}

type Fixture = {
    id: number,
    gameweekId: number,
    homeTeamId: number,
    homeTeam?: Team,
    homeTeamScore: number,
    awayTeamId: number,
    awayTeam?: Team,
    awayTeamScore: number,
    matchTime: string,
    status: FixtureStatus,
}

type FixtureStatus = "TOD" | "Finished" | "Active"