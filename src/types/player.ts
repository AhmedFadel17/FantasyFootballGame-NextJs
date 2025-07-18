type Player = {
    id: number;
    rank: number,
    name: string;
    count: number;
    clubImg: string;
    position: string;
};

type GWFantasyPlayer = {
    id: number;
    isStarting: boolean;
    posNum: number;
    isCaptain: boolean;
    isViceCaptain: boolean;
    points: number;
    player: FantasyPlayer | null,
    upcomingFixture?: Fixture
}

type FantasyPlayer = {
    id: number;
    name: string;
    fullName: string;
    shirtNumber: number;
    position: PlayerPosition;
    status: PlayerStatus;
    price: number;
    height: number;
    weight: number;
    dateOfBirth: number;
    imageSrc: string;
    country: string;
    teamId: number;
    team?: Team;
};

type TopStat = {
    player: FantasyPlayer;
    stat: number;
}

type PlayerStat = {
    id: number;
    assists
    : number;
    bonusPoints
    : number;
    cleanSheets
    : number;
    goalsScored
    : number;
    matchesPlayed
    : number;
    matchesStarted
    : number;
    minutesPlayed
    : number;
    ownGoals
    : number;
    penaltyMisses
    : number;
    penaltySaved
    : number;
    redCards
    : number;
    saves
    : number;
    seasonNumber
    : number;
    totalPoints
    : number;
    yellowCards
    : number;
    playerId: number;
    player?: FantasyPlayer
};

type FantasyTeamPlayer = {
    id: number;
    player: FantasyPlayer;
};

type PlayerStatus = "Available" | "Injured" | "Susbended"
type PlayerPosition = "Goalkeeper" | "Defender" | "Midfielder" | "Forward"
