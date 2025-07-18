type RowCardData = {
  rows: {
    title: string,
    icon?: any,
    flex: number,
    value: string | number
  }[]
}

type SimpleCardProps = {
  title: string;
  description: string;
  containerClasses?: string;
  titleClasses?: string;
  descriptionClasses?: string;
};


type PitchPlayerCardProps = {
  isBlank?: boolean,
  position?: string,
  player?: FantasyPlayer,
  pitchType: PitchType
}

type PitchProps = {
  players: PitchPlayerCardProps[][]
}

type UserInfoCardProps = {
  username: string,
  teamName: string,
  overallPoints: number,
  overallRank: number,
  totalPlayers: number,
  gameweekPoints: number,
}

type TransfersInfoCardProps = {
  inTheBank: number,
  squadValue: number,
  totalTransfers: number,
  gameweekTransfers: number,
}

type LeaguesRankingCardProps = {
  leagues: {
    name: string,
    rank: number,
    lastRank: number,
  }[],
}

type PitchType = "Transfers" | "PickTeam" | "MyTeam" | "Points"
