'use client';
import { swapPlayer, viceCaptainPlayer, captainPlayer } from "@/store/slices/myTeamSlice";
import { PitchPlayerCard } from "./index";
import { JSX } from "react";
import { MdSwapHorizontalCircle } from "react-icons/md";
import { useDispatch } from "react-redux";
import Swal from "sweetalert2";
import { BsInfoLg } from "react-icons/bs";
import { HiOutlineSwitchHorizontal } from "react-icons/hi";

type MyTeamPlayerCard = {
    gwPlayer: GWFantasyPlayer;
    allowed: boolean,
    position: string
}

export const MyTeamPlayerCard = ({ gwPlayer, position, allowed }: MyTeamPlayerCard) => {
    const dispatch = useDispatch();
    const {
        isCaptain,
        isViceCaptain,
        player,
        points,
        upcomingFixture
    } = gwPlayer;
    const handleMenuClick = () => {
        Swal.fire({
            title: `Set role for ${player?.name}`,
            showDenyButton: !isViceCaptain,
            showCancelButton: true,
            showConfirmButton: !isCaptain,
            confirmButtonText: 'Set as Captain',
            denyButtonText: `Set as Vice Captain`,
            cancelButtonText: `Cancel`,
            customClass: {
                confirmButton: 'bg-green-600 hover:bg-green-700 text-white font-bold py-2 px-4 rounded-lg shadow-md m-1 transition-colors duration-200',
                denyButton: 'bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-4 rounded-lg shadow-md m-1 transition-colors duration-200',
                cancelButton: 'bg-gray-500 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded-lg shadow-md m-1 transition-colors duration-200',
            },
            buttonsStyling: false,
        }).then((result) => {
            if (result.isConfirmed) {
                dispatch(captainPlayer(gwPlayer));

            } else if (result.isDenied) {
                dispatch(viceCaptainPlayer(gwPlayer));
            }
        });
    };
    const actionBtn: JSX.Element = (
        <>
            <button
                onClick={handleMenuClick}
                className="btn flex items-center justify-center w-full bg-white text-black py-1 font-bold">
                <BsInfoLg />
            </button>
            <button type="button" className="btn flex bg-yellow-400 w-full p-1 " onClick={() => dispatch(swapPlayer(gwPlayer))}>
                <HiOutlineSwitchHorizontal className="text-xl text-black" />
            </button>

        </>


    );
    let action: JSX.Element;
    if (isCaptain) {
        action = (
            <span
                className="flex items-center justify-center w-full text-black font-bold
             bg-[repeating-linear-gradient(45deg,#fef9c3_0.5px,#fde047_1px)]"
            >
                C
            </span>

        )
    } else if (isViceCaptain) {
        action = (
            <span
                className="flex items-center justify-center w-full text-white font-bold
             bg-[repeating-linear-gradient(45deg,#587ae0_0.5px,#0f39b8_1px)]"
            >
                V
            </span>
        )
    } else {
        action = (<></>);
    }
    const teamId=player?.teamId;
    let match="";
    if(upcomingFixture){
        if(teamId===upcomingFixture.homeTeamId){
            match=upcomingFixture.awayTeam?.abbreviation+" (H)";
        }else if(teamId===upcomingFixture.awayTeamId){
            match=upcomingFixture.homeTeam?.abbreviation+" (A)";
        }
    }

    return (
        <PitchPlayerCard action={action} actionBtn={actionBtn} player={player} value={match} position={position} allowed={allowed} />
    );
};

