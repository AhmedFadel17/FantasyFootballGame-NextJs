'use client';
import { PitchPlayerCard } from "./index";
import { JSX } from "react";
import { useDispatch } from "react-redux";
import { BsInfoLg } from "react-icons/bs";
import { IoCloseSharp } from "react-icons/io5";
import { removePlayerFromPosition } from "@/store/slices/transferSlice";

type TransfersPlayerCard = {
    player: FantasyPlayer | null;
    position: string
}

export const TransfersPlayerCard = ({ player, position }: TransfersPlayerCard) => {
    const dispatch = useDispatch();

    const actionBtn: JSX.Element = (
        <>
            <button
                onClick={()=>{}}
                className="btn flex items-center justify-center w-full bg-white text-black py-1 font-bold">
                <BsInfoLg />
            </button>
            {player && <button type="button" className="btn flex bg-yellow-400 w-full p-1 " onClick={() => dispatch(removePlayerFromPosition(player))}>
                <IoCloseSharp className="text-xl text-black" />
            </button>
            }

        </>


    );

    return (
        <PitchPlayerCard action={(<></>)} actionBtn={actionBtn} player={player} value={"€"+player?.price || ''} position={position}  />
    );
};

