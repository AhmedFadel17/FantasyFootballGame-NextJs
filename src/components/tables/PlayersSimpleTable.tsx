'use client'
import { playerPositionBgClass } from "@/constants/players";
import { SimpleTable } from "./simpleTable";
import { FaRegStar } from "react-icons/fa";
import { PlayerPosition } from "@/types/enums";
type PlayerSimpleTableData = {
  title: string,
  icon: any,
  rows: {
    player: string,
    team: string,
    position: string,
    score: string | number,
    image: string,
  }[]
}
export const PlayersSimpleTable = ({ title, icon, rows }: PlayerSimpleTableData) => {
  return (
    <SimpleTable
      icon={icon}
      title={title}
      columns={[
        {
          key: 'player',
          title: 'Player',
          render: (_, row) => (
            <div className="flex items-center">
              <div className="items-center flex-shrink-0 mr-2 sm:mr-3">
                <img
                  className="rounded-full"
                  src={row.image}
                  width={25}
                  height={25}
                  alt={row.player}
                />
              </div>
              <div>
                <h2 className="font-medium text-gray-800 text-lg">{row.player}</h2>
                <span className={`text-white rounded font-medium px-2 py-[2px] ${playerPositionBgClass[row.position as PlayerPosition] || ''}`}>{row.position}</span>
              </div>

            </div>
          ),
        },
        {
          key: 'score',
          title: 'Score',
          render: (_, row) => (
            <h2 className="text-center font-heading font-bold font-var-heading-500 text-xl">{row.score}</h2>
          ),
        },
      ]}
      data={rows}
    />
  );
};


